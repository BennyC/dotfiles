function kexec
      set podName (kubectl get pods --field-selector=status.phase=Running | grep $argv[1] | awk '{print $1}' | head -n 1)
      set cmd "/bin/sh"

      if test -n "$argv[3]"
          set cmd $argv[3]
      end

      if test -z "$podName"
          echo "Pod not found, try another name"
      else
          echo "SSHing to $podName"
          kubectl exec -it $podName -c $argv[2] -- $cmd
      end
  
end
