Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DE11D3662
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 18:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NvG7Ap5u5uQYeVM0Eo7zLFC3ugH0ulGPTIofbDbIW4=; b=Ujqs7s81WsjwlA
	WeFGWyJkT+udWZCB7t6FDArdQlOXr0tdnwceI44QEWQqpocQg8CAnLjSWCEcnkT94F7Qlgoh2/8at
	CghuaIGj8wOfTj8KUprgtZU4C4KPP2uCbwwbdFNluBnIIp9DsPQe6ss+4ut1W1HnOzH6Kei66g9sB
	knBJnaN2QPF2dDB4j4NQeaFtFrYxOvGAgnyW986UYiIFNLqguPKVJ2Yj71OEYOT24iL6Or/RZdrmm
	NoWH8dQPONTQGIpUp8xT4bdc7zz6zZptJq0k4k1ELGWa2lfqF/2RFKkhKGiBe+6L+zJB8WsAqmB/L
	oYWWknR9FxYptEOfd+6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGdL-0005rR-2s; Thu, 14 May 2020 16:22:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGdF-0005r1-1K
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 16:22:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D20BF20671;
 Thu, 14 May 2020 16:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589473368;
 bh=Fte72Mbp/XZajmoLfK0TqqRBmILe0jrvJk7vfY2qFHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZKbjDYZWX8hARURlHDbWYHecqa1XxnFVVkhkUCMOw8CF9sy+LHNVS+N8oepswJ6YB
 hNIWOVU4xwe8omRZGZuPB4mWYp5d9p8CKhVy0JMX13l2jhjPzT3TljDZ1ismQIHpST
 gT+pj3r3APu5eZ9UYKzkJs1MWKf1rpVmRVOETSJg=
Date: Fri, 15 May 2020 01:22:41 +0900
From: Keith Busch <kbusch@kernel.org>
To: Martin George <martinus.gpy@gmail.com>
Subject: Re: [PATCH] fabrics: write reconnect_delay to fabrics device on
 connect
Message-ID: <20200514162241.GA2847@redsun51.ssa.fujisawa.hgst.com>
References: <20200511143715.2524-1-marting@netapp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511143715.2524-1-marting@netapp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092249_096484_7040BDC3 
X-CRM114-Status: UNSURE (   7.67  )
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
Cc: Martin George <marting@netapp.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 08:07:15PM +0530, Martin George wrote:
> 
> Though '--reconnect-delay' option is defined for connect, it
> wasn't passed down to the kernel in connect_ctrl().

Applied, thanks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
