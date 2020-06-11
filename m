Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7E41F6F16
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jun 2020 22:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NQiNlMmwiLPKo4fF+WGIonJbDW8k2TJf0ghc8CLbLo=; b=rFlgEsh++zV+ah
	v2v59k4owhuYQPb+TfUDsjLlryb/Zx7aSVdFvuSAZAa8f7q/Reip4yd5T/tMrdn5AwHxiirL+Iyy8
	0pee9i4oZz3kC6SIIwjpxwFP52LaXy33o5HVeFBTSJNKIQrbJurF05qZxKFY1ddxOJtP6HjKNrEIb
	BSqN7TcszT9e7CnNSZU+jHGC3fCLVqCPRSDiK+nw+HW98zdoZNs3zJ5HegqTL9pDybZ7JlkRNB6hX
	CJn+jJxplue/Q7dOIZxnWgkjaAvivVZPgYtvzfWQDeb/zOAyqua5wIzDHAFI5BsuezBb1xAtddbz9
	sBjI9oGdBl6er+ZrfehA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjUGY-0006hn-Gj; Thu, 11 Jun 2020 20:57:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjUGU-0006gl-W4
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 20:57:36 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2602F2073E;
 Thu, 11 Jun 2020 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591909053;
 bh=0n/GOsnSr7knZn27n1qrF/Kp618ue9O37Wp34i+SZn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hW9gNa1j1AEcJ8zt6p/sv6zaMpmx526iJhyKfet3u/Z6YqvA2sGaIBmoZ9lSoxGab
 pdgTRdLHYl27pk0pVnNtqS3MXEYqM7BGSh0XfD4NePYKIaDWhtiyE8x7bgh+uRIcay
 6kbKj9+wFNgDEBPaH1FJ2If2Y/OQxDxRL6oGo7+o=
Date: Fri, 12 Jun 2020 05:57:27 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH nvme-cli] nvme: allow addr family to recognize loop
Message-ID: <20200611205727.GA6561@redsun51.ssa.fujisawa.hgst.com>
References: <20200421211254.17417-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421211254.17417-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_135735_052215_713FD13B 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 02:12:54PM -0700, Chaitanya Kulkarni wrote:
> This adds ability to decode discovery log page address family
> when NVMeOF configured as loop.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Thanks! Sorry for the long delay here, patch applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
