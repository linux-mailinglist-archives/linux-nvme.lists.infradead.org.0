Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0902191522
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNOn3sxi4rdJyHAIwiyaZ/xrlw7gbkOnak042lVwpRk=; b=JCyaJcV6JI6J9D
	ACZjKSPxUNu2nVa6cPyGlagfdA414SmVXqGgKn6RvyiJ2VMqymXaBE/TYIQuNGCl5Y0Iw5vpW8ycb
	vqwqzcpBQdZ6J8dlntb2/KilxLmy31YJ7TQXE8Cx5NyWiPcsUzyBUKGrjOclQ36bSxw967oJUJCu9
	wYttXIazLXMHK/zQ4yDpYJZCRQbu6Wo2vTo8pEoC3kbrXpSAI/9lCLVwP23YFSW5f+2g9nl1KsBGp
	UjTEFf/YGZvz0mE+IDUcYKAZcllvyD1d+3nLvmj56zc6HH0qTrsrVTqZRJa3GF/qbOmbzTI8/aPPJ
	TTuTvpjk2I+os3pmeisw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlhk-0003JZ-RP; Tue, 24 Mar 2020 15:43:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlhd-0003IW-3E
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:42:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 43F7468AFE; Tue, 24 Mar 2020 16:42:51 +0100 (CET)
Date: Tue, 24 Mar 2020 16:42:50 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 4/7] nvme: Make nvme_uninit_ctrl symmetric to
 nvme_init_ctrl
Message-ID: <20200324154250.GC22197@lst.de>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
 <1585063785-14268-5-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585063785-14268-5-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_084253_305877_7C1203EB 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 05:29:42PM +0200, Israel Rukshin wrote:
> Put the ctrl reference count at nvme_uninit_ctrl as opposed to
> nvme_init_ctrl which takes it. This decrease the reference count at the
> core layer instead of decreasing it on each transport separately.
> Also move the call of nvme_uninit_ctrl at PCI driver after calling to
> nvme_release_prp_pools and nvme_dev_unmap, in order to put the reference
> count after using the dev. This is safe because those functions use
> nvme_dev which is freed only later at nvme_pci_free_ctrl.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
