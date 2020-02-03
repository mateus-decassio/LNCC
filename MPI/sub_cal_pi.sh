#!/bin/bash
#SBATCH --nodes=2                      #Numero de Nós
#SBATCH --ntasks-per-node=2            #Numero de tarefas por Nó
#SBATCH --ntasks=4                     #Numero total de tarefas MPI
#SBATCH -p treinamento                 #Fila (partition) a ser utilizada
#SBATCH -J sdumont-mpi                 #Nome job
#SBATCH --exclusive                    #Utilização exclusiva dos nós durante a execução do job

#############################################
#   Para a submissão na Sdumont:            #
#   sbatch sub_cal_pi.sh EXECUTÁVEL N       #
#   N = número de intervalo                 #
#-------------------------------------------#
#   Para a visualização dos Jobs:           #
#   squeue -u $USER                         #
#   ou                                      #
#   watch squeue -u $USER (modo de visão    #
#   tela cheia, para sair CTRL+C)           #
#-------------------------------------------#
#   Para cancelar o Job:                    #
#   scancel NUMERO_DO_JOB                   #
#############################################

source /scratch/app/modulos/intel-psxe-2017.1.043.sh
export I_MPI_PMI_LIBRARY=/usr/lib64/libpmi.so

EXEC=${1}           
n=${2}      # numero de intervalos

srun -n $SLURM_NTASKS $EXEC $n




