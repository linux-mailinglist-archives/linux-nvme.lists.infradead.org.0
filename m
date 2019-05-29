Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0A72E8DF
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 01:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/G0bWuhLIavKY76/1UnWuuNAkqhCsTlEhbZO+opbd0c=; b=dR95vy9CDQgMuO
	aQXcPsB3xF0e3f+1p8k1iOMWb4MyCS2/E5RA5jZ5fN1JAbctQeeeXgR7GSDl7OAL1qLw/ybjgozD4
	59dtbWX3qjHJoIOcdIS0ZN9Tg2SkcWQGWzZa0GunToBkhNWJucPsRnHA5WzZZ2ioZ0pJ7xVkz+/94
	zICKBYqg9ZxZb9Tf7b0gf5sZPMywFw1IccCi9wCa74FaH2MirfIcLfHB/u8spuX+3Wq2Y5Xo+wVEE
	5gjIRZ8HOFzVc7ZwVDRX4wLf8e+aXsJnXh7d6pHsvRm60RswBXbicUpkD2Awcm3gVSrGGlDjQMCCp
	f5Q4Z+5lvgJn/Sf22jWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7k3-0002M3-JZ; Wed, 29 May 2019 23:12:19 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7jx-0002Lk-TQ
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 23:12:15 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4TN0dQZ014624; Wed, 29 May 2019 16:12:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=qIrmBfagmZlWafcO848Lh75jeV45F3W8Z6YkNX0CLIk=;
 b=av1Lsb6R4jbcZSpNPGVr2jlfh5Zj0TP3eTkrwdEzIioN+34ot2ZF+UpX3aJeHWsTkUW8
 gEt9MTOp4NNRSObVhOehnl+QgHz0dA70iBikktzazHUtQH+vuSPO/+HHh361QCH4s7wL
 ppLNUXLvCquUgZcFJ+3drJchGV/nOZbmjzMnXuhKTG5+YKLR8KlbCbgPoQQwtHAz4gPI
 WpCJvr99uLenee9/s0a4e33a5LixWkixNyj1vE+Wp9q4R92jb21aBikQHRVYIsT2f1Lm
 SxFog2pTrSlcZlW537y0RysGBnO9vVCOPNDxjm+TOJsBdJMZVdO+kMHRW6cjRl+bDEPl jQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2sspkpkm88-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 29 May 2019 16:12:12 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 29 May
 2019 16:12:11 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 29 May 2019 16:12:11 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 3D68E3F7040;
 Wed, 29 May 2019 16:12:11 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4TNC8YZ005431;
 Wed, 29 May 2019 16:12:09 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 29 May 2019 16:12:08 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v2 0/7] nvmet/nvmet_fc: add events for discovery controller
 rescan
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1905291609220.19585@mvluser05.qlc.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_161214_062307_F47691E5 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: martin.petersen@oracle.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Apologies for the delay, wanted to test out some of these changes, but 
it looks it would be a bit longer.

Anyway, the series look good to me.

-- arun

On Tue, 14 May 2019, 2:58pm, James Smart wrote:

> A transport may have a transport-specific mechanism that can signal
> when discovery controller content has changed and request a host
> to rescan to the discovery controller.
> 
> FC is such a transport. RSCNs may be generated by the subsystem's FC
> port and sent to the initiator or fabric controller. If a fabric, the
> fabric controller will broadcast the RSCN to registered hosts. A host,
> upon receiving the RSCN, would validate connectivity then initiate a
> discovery controller rescan.
> 
> These patches:
> - Modify the nvmet core layer to call a transport callback whenever
>   a port discovery change occurs.  To facilitate the callback and
>   avoid new routines between core. and discovery.c the port structure
>   now has a copy of the transport ops structure.
> - Modify the nvmet-fc transport to support the nvmet callback, and add
>   its own internal lldd api to request the lldd to generate an RSCN.
> - Update nvme-fcloop test harness to support the lldd api and invoke
>   the rescan on the host.
> - Modify the lpfc driver to support the new interfaces:
>   - Adds a new routine to transmit an RSCN to the other port (pt2pt)
>     or fabric controller.  Add recognition for receipt of an RSCN.
>   - Add support for the nvmet lldd api for discovery event, which
>     invokes the RSCN transmit.
>   - Ties into the RSCN receipt and requests the nvme_fc transport
>     to rescan the remote port (discovery event will be posted).
>   - Adds a sysfs routine to enable manual generation of an RSCN.
> 
> v2:
> Revise lpfc patch 6 to check for port role nvme discovery not just
>   nvme target
> 
> 
> James Smart (7):
>   nvmet: add transport discovery change op
>   nvmet_fc: add transport discovery change event callback support
>   nvme-fcloop: Add support for nvmet discovery_event op
>   lpfc: Add support to generate RSCN events for nport
>   lpfc: add nvmet discovery_event op support
>   lpfc: Add support for translating an RSCN rcv into a discovery rescan
>   lpfc: Add sysfs interface to post NVME RSCN
> 
>  drivers/nvme/target/core.c       |   2 +
>  drivers/nvme/target/discovery.c  |   4 ++
>  drivers/nvme/target/fc.c         |  11 ++++
>  drivers/nvme/target/fcloop.c     |  37 ++++++++++++
>  drivers/nvme/target/nvmet.h      |   2 +
>  drivers/scsi/lpfc/lpfc.h         |   2 +
>  drivers/scsi/lpfc/lpfc_attr.c    |  60 ++++++++++++++++++
>  drivers/scsi/lpfc/lpfc_crtn.h    |   4 ++
>  drivers/scsi/lpfc/lpfc_els.c     | 127 +++++++++++++++++++++++++++++++++++++++
>  drivers/scsi/lpfc/lpfc_hbadisc.c |  35 +++++++++++
>  drivers/scsi/lpfc/lpfc_hw.h      |   2 +
>  drivers/scsi/lpfc/lpfc_nvme.c    |  44 ++++++++++++++
>  drivers/scsi/lpfc/lpfc_nvmet.c   |  17 ++++++
>  drivers/scsi/lpfc/lpfc_sli.c     |   1 +
>  include/linux/nvme-fc-driver.h   |   6 ++
>  15 files changed, 354 insertions(+)
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
