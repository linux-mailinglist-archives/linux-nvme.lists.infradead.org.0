Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F5F988A0
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=gp8Z4SRWaZfqmU
	KmB/5Xezm42B3yjot1/pK9HKkI+LIprnnmstEWblktR+FuO87k5Cz3PEL0UEQgAVZYRq+yyPjKj/j
	s8/vQAxc5UsPmiTHBs2/hx5oFSKBpLK4yr3fDHQVvj+iXiFVAWuGbJmhz7pmjhQNnE4hNMsJRW8bT
	R4ORt6gNaeyEfcZgo4k8A3PkIA+2M3H0tE0cXOvmuhUS0j2kzI1XQXfOqoULT84g/qvDjVNOrS7WU
	hxW8t+gtMUXG2Ml+FfSpYUfzl/WEwBOTcUqWqnTmJvnmaZwPPW17po78fAklOBbpywBD0Op1coy/t
	H+c+IkvmJdGVnD3xcBGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bE3-0002UO-8T; Thu, 22 Aug 2019 00:45:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bDx-0002EQ-OH
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:45:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D8B8868BFE; Thu, 22 Aug 2019 02:45:06 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:45:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 6/7] nvme-fc: Fail transport errors with
 NVME_SC_HOST_PATH
Message-ID: <20190822004506.GP10391@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-7-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813064304.7344-7-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174509_978042_73BDAD72 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
