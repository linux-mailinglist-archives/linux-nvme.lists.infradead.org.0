Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4060D18D104
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 15:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQoAkTQpahSQdZojoJupLdvcFgKxMop0Da8IWrUZEq4=; b=hlwqi929ga66VT
	1l5E2Z0ccLJ3+40xuBL+T7oX1MRUsvlRBGNkeeYdL0GWrNed91qU7KYfdMRayyPOY+3PZ/4ot1wiB
	BSIwHL7iCM5lBxr5UdVcvTQTxMSvJhXEpNmvsXEaKw0o0hsuIggVlEcIu8LE9R8ZydUxa2Dn94VQF
	pC3qQaZg9EBegkXNvLI4DRPNqI+TTo6egaULtnvrTpMA0yUzwsKpixorETZudlnD61O4g17FeRkIV
	0ZJXjWxnNwU0lnrB5BpUZZKwtVFh2Wbov8Nb1rusQPhmafH/YtSpIcOaYkcX9MrBsSSdKqAWfsvkQ
	Yjo6pPksJGjziCvNg/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIkh-0007fo-7q; Fri, 20 Mar 2020 14:35:59 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIkc-0007ea-S9
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 14:35:56 +0000
Received: from localhost (pvp1.blr.asicdesigners.com [10.193.80.26])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id 02KEZljh018015;
 Fri, 20 Mar 2020 07:35:48 -0700
Date: Fri, 20 Mar 2020 20:05:47 +0530
From: Krishnamraju Eraparaju <krishna2@chelsio.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
Message-ID: <20200320143544.GA5539@chelsio.com>
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
 <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
 <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
 <20200317191743.GA22065@chelsio.com>
 <38f79fb7-841a-9faa-e1f8-2de4b9f21118@grimberg.me>
 <20200317203152.GA14946@chelsio.com>
 <3f42f881-0309-b86a-4b70-af23c58960fc@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f42f881-0309-b86a-4b70-af23c58960fc@grimberg.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_073554_940330_3114E1BB 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-rdma@vger.kernel.org, Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Bernard Metzler <BMT@zurich.ibm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wednesday, March 03/18/20, 2020 at 09:49:07 -0700, Sagi Grimberg wrote:
> 
> >>Thanks Krishna,
> >>
> >>I assume that this makes the issue go away?
> >>--
> >>diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> >>index 11e10fe1760f..cc93e1949b2c 100644
> >>--- a/drivers/nvme/host/tcp.c
> >>+++ b/drivers/nvme/host/tcp.c
> >>@@ -889,7 +889,7 @@ static int nvme_tcp_try_send_data(struct
> >>nvme_tcp_request *req)
> >>                         flags |= MSG_MORE;
> >>
> >>                 /* can't zcopy slab pages */
> >>-               if (unlikely(PageSlab(page))) {
> >>+               if (unlikely(PageSlab(page)) || queue->data_digest) {
> >>                         ret = sock_no_sendpage(queue->sock, page,
> >>offset, len,
> >>                                         flags);
> >>                 } else {
> >>--
> >
> >Unfortunately, issue is still occuring with this patch also.
> >
> >Looks like the integrity of the data buffer right after the CRC
> >computation(data digest) is what causing this issue, despite the
> >buffer being sent via sendpage or no_sendpage.
> 
> I assume this happens with iSCSI as well? There is nothing special
> we are doing with respect to digest.

I don't see this issue with iscsi-tcp.

May be blk-mq is causing this issue? I assume iscsi-tcp does not have
blk_mq support yet upstream to verify with blk_mq enabled.
I tried on Ubuntu 19.10(which is based on Linux kernel 5.3), note that
RHEL does not support DataDigest.

The reason that I'm seeing this issue only with NVMe(tcp/softiwarp) &
iSER(softiwarp) is becuase of NVMeF&ISER using blk-mq? 

Anyhow, I see the content of the page is being updated by upper layers
while the tranport driver is computing CRC on that page content and
this needs a fix.

one could very easily recreate this issue running the below simple program over
NVMe/TCP.
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main() {
	int i;
	char* line1 = "123";
	FILE* fp;
	while(1) {
		fp = fopen("/mnt/tmp.txt", "w");
		setvbuf(fp, NULL, _IONBF, 0);
		for (i=0; i<100000; i++)
		     if ((fwrite(line1, 1, strlen(line1), fp) !=
strlen(line1)))
			exit(1);

		if (fclose(fp) != 0)
			exit(1);
	}
return 0;
}

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
