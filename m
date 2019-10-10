Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A03D3188
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 21:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40d56MNzH1KNTOz08/W9Y7cj6qyNpaDRYUu7Vjiif9g=; b=PZirgA1FZE1k+x
	Fs4a+CFG9SzC9XG19hNQwKZ2rSEbQQPd+DsRVL0YL/lpe4N91glafTO9zQG9FLmzNWoQ34fXSlugY
	W80d+BapqP7hujznFOhfqw8OrCFdwslL1rgEO7E6AAPbyQvHkSx9lfZG/pYLFR7sITZaW9uEKWgbH
	4+A9wkonIPN2vRNhXDiNEf+7MEl6Fi6SK2GxivlnTXfLhmErWp6FXHzDXKOUHaqSjfqf5cx36n3BG
	CvG0q9MmQao2goEamdQyByhy+xumkZU5sHKYTCwASJ9f+cOEu47bYATGpJLm/b2Nj+whtmAHGYA0A
	Z+gah5Bs/B7KEXOJWYRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIeL9-0005cL-Sb; Thu, 10 Oct 2019 19:43:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIeL0-0005bm-P6
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 19:43:03 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB160206A1;
 Thu, 10 Oct 2019 19:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570736582;
 bh=3Vb6E5O4pulj6nFs6iIHT9HcPiDmkHn9fbRr9YqfqIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S2spMYWbWxLruboszWGPwz/GRaRCavJM4b79dOsKZivuQ9z30W47bi1x0i2LQmVMJ
 Spl0DPLNU6/Q8nqIbZYobWjXdp5XIC0EkbExRVSTVkILm6qOZ6HubCffmscqxfx7r5
 zv+c4AnuUVdYeqdqyQyaJr3+sjcqfz2Mw2XKDUDI=
Date: Fri, 11 Oct 2019 04:42:59 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 0/3] nvme-fc: sync with FC-NVME-2 standard
Message-ID: <20191010194259.GE22635@washi1.fujisawa.hgst.com>
References: <20190927215136.3096-1-jsmart2021@gmail.com>
 <9a0beacb-72b3-0e3c-fa98-0d1dcc85fe80@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a0beacb-72b3-0e3c-fa98-0d1dcc85fe80@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_124302_833598_0C7E3D5F 
X-CRM114-Status: UNSURE (   8.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 04:56:28PM -0700, Sagi Grimberg wrote:
> This looks good James, I'll queue these up to nvme-4.5

I've queued these up in nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
