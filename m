Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C7639289
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xbJwoRgjBGSMUMHzDqBncjfNy/72EVnwSbYBVZmIk4=; b=FJOcCN66Hhp2tc
	0Ka6ImG0/ehfz8mC7pssAcLBVpSp+YqIsiv8SBVa6+E37ptLP0Kb5goPtRBU6+/tiqRKl4JqSC7jZ
	jDU5Gs8pCXGggFfSbR6I55KK50JrqY1KqMKVEp4cCNRhTGA3EbiKESGSTDfS/6A/M1uqXi7Tc+MGO
	Uut8sCbLokxxkXt5784wioAnVSw3OcE8gxDuWD8FMimdSPnxxlaJJkMQFBjxeRaLfCZsOj9FWAKd7
	QVeC/zohyyHYqwvFNFdAvOY+6BMvLNJzX3ukP/a7smFSicfXkJDPhjVA+Z/EAOjjcxVH2qe5vlRLH
	aZRR98lnir3dvtiJYdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI7B-0002el-5W; Fri, 07 Jun 2019 16:53:17 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI74-0002dy-RX
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:53:12 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5B2EA68AFE; Fri,  7 Jun 2019 18:52:44 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:52:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V7 5/7] nvme: trace: filter out unnecessary fields
 for fabrics
Message-ID: <20190607165244.GH7307@lst.de>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-6-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606194512.11020-6-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_095311_044673_643C5DDC 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 04:45:10AM +0900, Minwoo Im wrote:
> If the given command is for fabrics command, then it should not print
> out the following fields which are for the !fabrics commands:
>   1) "flags" (FUSE, PSDT).
>   2) "nsid" which is reserved in fabrics command.
>   3) "metadata" which is also reserved in fabrics.
> 
> To make !fabrics commands clear, don't print them out in case of fabrics
> commands.

Well, they are all reserved and shall be clared to zero.  So I really
don't see any harm in printing them if we can keep the tracing code
simpler and the output more regular.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
