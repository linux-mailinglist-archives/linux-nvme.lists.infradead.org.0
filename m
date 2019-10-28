Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34326E7D42
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 00:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vG5ARtpq2hrlhsHafKAbWw72dXZsVB+IqzmFDPsTPj0=; b=K+WuDaFlaYVyPJ
	aSWLuOWFcikbSKzyKwXRWr38zmGc26BKwgKv3OtMMOVCWwIR2km1vcchaMLaxZ/SYRT/4mlgLv4ZL
	ZHlnvemzd82pdJospqQ/cP+PNRR9kztIN8WZFfoz0auOx5F2XmUrTgtGfiPQs0v/GIq9hE4XwC7wo
	gNa6vCbRncRRzpHI3U2pL0jlYElTFS3Sc1tM7FkVembtqfQzTOY4d+F0+HcAVNRFZVi1xWXzcbjtt
	I18QNepWZTraGTkFskUtL8Affpk6JwqbfjPOJPMGwqjPyWfDGHK+XteznGDdwUhEhd4dqE4Ps486A
	zyF4wbiMN4cSbkrDZJeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPEn3-0002r4-Sa; Mon, 28 Oct 2019 23:51:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPEmy-0002qa-VM
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 23:51:10 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C607B20578;
 Mon, 28 Oct 2019 23:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572306668;
 bh=s/VgZswTSM3tl2SFZC36Ok1cphb7D1/PcaSPf7oZa5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LvqvSJBDHUBhGHZaLGumYNvtVL/C617mD/7kq4QWAxefGHVi1D5hG0MxswZBpYxvX
 v7JzJwWFpr+yKC5ti4Ut0kCvtaEd38Dh8PSCifrGLvQz/egwwGECRcqAqxkrvQzmDs
 UnVfwt4tf6YK79/DlCOxlGqMNEEwLHhB0JdgP1FQ=
Date: Tue, 29 Oct 2019 08:51:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: add plugging for read/write when ns is bdev
Message-ID: <20191028235103.GA3064@redsun51.ssa.fujisawa.hgst.com>
References: <20191028182326.14311-1-chaitanya.kulkarni@wdc.com>
 <4fef7f91-67ce-548e-ae0d-6f43fe1d1bfd@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fef7f91-67ce-548e-ae0d-6f43fe1d1bfd@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_165109_033454_7C7B5234 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Added to nvme-5.5, thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
