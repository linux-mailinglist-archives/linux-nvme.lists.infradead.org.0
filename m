Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554E3186FE2
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Mar 2020 17:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M26RIrS470lL24vywrPEWpRToLkREbkZCTtyFk4LGwk=; b=oYJnvA2K/y6tdv
	0cxE5kGhRE51Q3ZUSmfUrTK21Zz5NUHYgga/o0TgikRGdVbBtnammkKsr4dWkYOQaO1zjJlDPSH5a
	9PrKBsIUrKaVix/TKHpVwvOr2JbVV21ggBbYbMk5WvXkyc4YKImOeHMiOeqnmPiTMdGU8a6INxg9Z
	hQfLUW5jIP4O4heJa0oi/J9iCQ6Jc6rRNg/7SAlqedLQWDxRaF+pAJ3+oobwFlrHP6y6/QDBLQ8ff
	J94TPe/FzpH8dC21sry/US3BKS5e05eXtwqh5+PkcezcKoK8YH1WZxhciIZRY34gr6LJpiA/iTAKh
	RuHrosYp/a0Uc5PYkshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsTm-0000Yl-SP; Mon, 16 Mar 2020 16:20:38 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsTh-0000XZ-Kz
 for linux-nvme@lists.infradead.org; Mon, 16 Mar 2020 16:20:35 +0000
Received: from localhost (pvp1.blr.asicdesigners.com [10.193.80.26])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id 02GGKANd004594;
 Mon, 16 Mar 2020 09:20:11 -0700
Date: Mon, 16 Mar 2020 21:50:10 +0530
From: Krishnamraju Eraparaju <krishna2@chelsio.com>
To: Bernard Metzler <BMT@zurich.ibm.com>, sagi@grimberg.me, hch@lst.de
Subject: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
Message-ID: <20200316162008.GA7001@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_092033_700655_86FA7A1F 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
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
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


I'm seeing broken CRCs at NVMeF target while running the below program
at host. Here RDMA transport is SoftiWARP, but I'm also seeing the
same issue with NVMe/TCP aswell.

It appears to me that the same buffer is being rewritten by the
application/ULP before getting the completion for the previous requests.
getting the completion for the previous requests. HW based
HW based trasports(like iw_cxgb4) are not showing this issue because
they copy/DMA and then compute the CRC on copied buffer.

Please share your thoughts/comments/suggestions on this.

Commands used:
--------------
#nvme connect -t tcp -G -a 102.1.1.6 -s 4420 -n nvme-ram0  ==> for
NVMe/TCP
#nvme connect -t rdma -a 102.1.1.6 -s 4420 -n nvme-ram0 ==> for
SoftiWARP
#mkfs.ext3 -F /dev/nvme0n1 (issue occuring frequency is more with ext3
than ext4)
#mount /dev/nvme0n1 /mnt
#Then run the below program:
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

DMESG at NVMe/TCP Target:
[  +5.119267] nvmet_tcp: queue 2: cmd 83 pdu (6) data digest error: recv
0xb1acaf93 expected 0xcd0b877d
[  +0.000017] nvmet: ctrl 1 fatal error occurred!


Thanks,
Krishna.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
