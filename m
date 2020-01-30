Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A2714DD70
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 16:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1O1VI1D44m4Qf8BRkN+IC195Lgxd9KZAdrW0ZLAD4M=; b=XEeFuhX+Byq2LM
	o38T0+jvHQQ4H87yUBASbwNuOgpgVwBOSwfHHxUSPXVKPe/UnnUyCj94XSBHjhXLF3iXnKZZQVdRp
	fSwqckmp7T629K2FnUoxNTXkDhTBguDvkGQ/Nehu/wMgBt53SWceaoNaDJMN8iDZwwEPf9Xc/gQoX
	A5E60B90B0erQ6WO8MdQQjXBkiVq9XmkbKDy4OlEguMsu1dOysFb8Hct4f82+k3hRbtACSoJc2Sh0
	J245Kbv3bwG3tmv6rspLXAXPhBUreazkW/WNmh/dbRBh8vIzClPTkg9/Ugu7bCLzfP9lQcRZlRStq
	YdGVmjcoryKZ0IH2tqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBIh-0005Qd-Vp; Thu, 30 Jan 2020 15:00:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBIX-0004yB-PD
 for linux-nvme@lists.infradead.org; Thu, 30 Jan 2020 15:00:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EB7AD68C4E; Thu, 30 Jan 2020 15:59:59 +0100 (CET)
Date: Thu, 30 Jan 2020 15:59:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V3 4/4] nvmet: update AEN list and array at one place
Message-ID: <20200130145959.GB4798@lst.de>
References: <20200119212326.19701-1-chaitanya.kulkarni@wdc.com>
 <20200119212326.19701-5-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200119212326.19701-5-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_070001_978218_E70C4C16 
X-CRM114-Status: UNSURE (   7.44  )
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
Cc: Daniel Wagner <dwagner@suse.de>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 01:23:26PM -0800, Chaitanya Kulkarni wrote:
>  	if (sq->ctrl) {

This can be ctrl.

> -		nvmet_ctrl_put(sq->ctrl);
> -		sq->ctrl = NULL; /* allows reusing the queue later */
> +		nvmet_ctrl_put(ctrl);
> +		ctrl = NULL; /* allows reusing the queue later */

This last line still needs to be sq->ctrl.  Everything else looks fine.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
