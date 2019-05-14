Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E601CF8E
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 21:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN6tzXktmnERkxTNgyfVSG31V4K9r83cse9bFRskGlE=; b=Y9mhfTUms/Ros8
	P12i5IMKOYW9KklA4glyXuL1i2bWIaqo+lRyGPSovurEffEfRGNYKEPHfgG+1aR33I4ENa5cgLBco
	gJqu1IINlbcWBG86MCAvZPGVqwvtn6+7iwM0lpeYX2GeSG6yf/BRCqO9PTsls8sVjWmCbUFRyuQG9
	cJKjmn73uyYks1shFi/GxODUMUpYRus1IoTMr8AF2XSs/X7Bc9t+70Jr8WKUCvIL+NtlSwSOqOKna
	SDeH8hypIycbJSq/Z3qYX7lJvrvnWLSqT43o4WzW2z1RbG4X9X36GBzAgoSQHZe2JgRoQ7fgff1sV
	F95BGfNi/lflFIxROcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQciu-0000Lb-Mb; Tue, 14 May 2019 19:04:24 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcip-0000LF-8g
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 19:04:20 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4EIolWd015261; Tue, 14 May 2019 12:04:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=dXR04AoSeyRn1IIPI8nam8ZytYXmklf50MQd1Rw4pQg=;
 b=Q8M2lNw0jDa/oo1XQzVkhApSmjEeIOL8q4PGJc2PY0M5Hp2kvmpivSMGMVOOTZwv+d6O
 UEKqEpfZj5/GJsVmEkpK83gvq/2r9yKQtIjsX5myN+XAq6QtP9dVyezpwK2+f+B+Q0ac
 Iws69+yzZ8b4HteYUJclN8W+YwCLGD51GyJoGJon898M+V+doh5txUIXksUDFSOJ4ZwA
 Yni+cBOhI4zLOJjEo5DGSg1o/nurOYsCxUULxAzfStrF0QCIubTBDaQs3+2zpdpDHSab
 gmISrR4lLGfcYoA3LQwcf3Eb67k4uOTXFB2XyhzR5v8HyqTlIHa+sqEGfl7dUlFTVBjp oA== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2sg0vegrcj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2019 12:04:16 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 14 May
 2019 12:04:15 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Tue, 14 May 2019 12:04:15 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 3F0533F703F;
 Tue, 14 May 2019 12:04:15 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4EJ4Ef8001243;
 Tue, 14 May 2019 12:04:14 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Tue, 14 May 2019 12:04:14 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 6/7] lpfc: Add support for translating an RSCN rcv into
 a discovery rescan
In-Reply-To: <20190513224314.24169-7-jsmart2021@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1905141202325.19585@mvluser05.qlc.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-7-jsmart2021@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-14_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_120419_432569_FB24B46C 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 13 May 2019, 3:43pm, James Smart wrote:

> This patch updates RSCN receive processing to check for the remote
> port being an NVME port, and if so, invoke the nvme_fc callback to
> rescan the remote port.  The rescan will generate a discovery udev
> event.
> 
> Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>  drivers/scsi/lpfc/lpfc_crtn.h |  2 ++
>  drivers/scsi/lpfc/lpfc_els.c  |  5 +++++
>  drivers/scsi/lpfc/lpfc_nvme.c | 44 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 51 insertions(+)
> 
> diff --git a/drivers/scsi/lpfc/lpfc_crtn.h b/drivers/scsi/lpfc/lpfc_crtn.h
> index 4b8eb9107b85..866374801140 100644
> --- a/drivers/scsi/lpfc/lpfc_crtn.h
> +++ b/drivers/scsi/lpfc/lpfc_crtn.h
> @@ -557,6 +557,8 @@ void lpfc_ras_stop_fwlog(struct lpfc_hba *phba);
>  int lpfc_check_fwlog_support(struct lpfc_hba *phba);
>  
>  /* NVME interfaces. */
> +void lpfc_nvme_rescan_port(struct lpfc_vport *vport,
> +			   struct lpfc_nodelist *ndlp);
>  void lpfc_nvme_unregister_port(struct lpfc_vport *vport,
>  			struct lpfc_nodelist *ndlp);
>  int lpfc_nvme_register_port(struct lpfc_vport *vport,
> diff --git a/drivers/scsi/lpfc/lpfc_els.c b/drivers/scsi/lpfc/lpfc_els.c
> index c9a40e05edcc..c8b305c1aafb 100644
> --- a/drivers/scsi/lpfc/lpfc_els.c
> +++ b/drivers/scsi/lpfc/lpfc_els.c
> @@ -6329,6 +6329,8 @@ lpfc_rscn_recovery_check(struct lpfc_vport *vport)
>  			continue;
>  		}
>  
> +		if (ndlp->nlp_fc4_type & NLP_FC4_NVME)
> +			lpfc_nvme_rescan_port(vport, ndlp);
>  
>  		lpfc_disc_state_machine(vport, ndlp, NULL,
>  					NLP_EVT_DEVICE_RECOVERY);
> @@ -6440,6 +6442,9 @@ lpfc_els_rcv_rscn(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
>  				 "2024 pt2pt RSCN %08x Data: x%x x%x\n",
>  				 *lp, vport->fc_flag, payload_len);
>  		lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);
> +
> +		if (ndlp->nlp_fc4_type & NLP_FC4_NVME)
> +			lpfc_nvme_rescan_port(vport, ndlp);
>  		return 0;
>  	}
>  
> diff --git a/drivers/scsi/lpfc/lpfc_nvme.c b/drivers/scsi/lpfc/lpfc_nvme.c
> index 1aa00d2c3f74..6f179de44fc7 100644
> --- a/drivers/scsi/lpfc/lpfc_nvme.c
> +++ b/drivers/scsi/lpfc/lpfc_nvme.c
> @@ -2399,6 +2399,50 @@ lpfc_nvme_register_port(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
>  #endif
>  }
>  
> +/**
> + * lpfc_nvme_rescan_port - Check to see if we should rescan this remoteport
> + *
> + * If the ndlp represents an NVME Target, that we are logged into,
> + * ping the NVME FC Transport layer to initiate a device rescan
> + * on this remote NPort.
> + */
> +void
> +lpfc_nvme_rescan_port(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
> +{
> +#if (IS_ENABLED(CONFIG_NVME_FC))
> +	struct lpfc_nvme_rport *rport;
> +	struct nvme_fc_remote_port *remoteport;
> +
> +	rport = ndlp->nrport;
> +
> +	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
> +			 "6170 Rescan NPort DID x%06x type x%x "
> +			 "state x%x rport %p\n",
> +			 ndlp->nlp_DID, ndlp->nlp_type, ndlp->nlp_state, rport);
> +	if (!rport)
> +		goto input_err;
> +	remoteport = rport->remoteport;
> +	if (!remoteport)
> +		goto input_err;
> +
> +	/* Only rescan if we are an NVME target in the MAPPED state */
> +	if (remoteport->port_role & FC_PORT_ROLE_NVME_TARGET &&

Should not the check above be for a NVME_DISCOVERY role?

Regards,
-arun

> +	    ndlp->nlp_state == NLP_STE_MAPPED_NODE) {
> +		nvme_fc_rescan_remoteport(remoteport);
> +
> +		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
> +				 "6172 NVME rescanned DID x%06x "
> +				 "port_state x%x\n",
> +				 ndlp->nlp_DID, remoteport->port_state);
> +	}
> +	return;
> +input_err:
> +	lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
> +			 "6169 State error: lport %p, rport%p FCID x%06x\n",
> +			 vport->localport, ndlp->rport, ndlp->nlp_DID);
> +#endif
> +}
> +
>  /* lpfc_nvme_unregister_port - unbind the DID and port_role from this rport.
>   *
>   * There is no notion of Devloss or rport recovery from the current
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
