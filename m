Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8183A19A565
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 08:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePtPxYKomM60s70S/CN87t4rvykSG7vifqJvPcz1PzY=; b=gt7bBAHeMCAfpS
	38h1IeV06BTK0/y/KTU7Nds58hhCCPTr9zpyPFlm43foCyUZ2bu4B0hvqXS9haOEIcGfyeKlt8xFH
	2CV/e1vV9j00SO2oX7hXAw/t/pVE9OwXMlcsDeswK+la4To08EGRU3B/CjK2dvllE5/wd2lEQOZ1/
	5V9lbsXqJv63uDUDzrbI8uyXqL/3jtFY3sTMo+Uls8djsYbfiDChNjsxW06bWy47nOQIO0H1mD2W7
	Z1Ba7u6SyiMZiJ/j5rfs6IvbO/E0sRMfZ8yzwFSKjilWbDx/xldXbDjMjc7yVRhAanP3fcU2PfB7S
	hpVFrcwKXKEi/PLSEj5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWwa-0008NT-3c; Wed, 01 Apr 2020 06:33:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWwV-0008My-CO
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 06:33:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7B25B68BFE; Wed,  1 Apr 2020 08:33:35 +0200 (CEST)
Date: Wed, 1 Apr 2020 08:33:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme: inherit stable pages constraint in the mpath
 stack device
Message-ID: <20200401063335.GA25619@lst.de>
References: <20200401060625.10293-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401060625.10293-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_233339_569384_605BFBE3 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:06:25PM -0700, Sagi Grimberg wrote:
> If the backing device require stable pages, we need to set it
> on the target as well. This applies to rdma/fc transports when
> doing data integrity and tcp transport calculating digests.

target?? Seems like this propagates it to the multipath node.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
