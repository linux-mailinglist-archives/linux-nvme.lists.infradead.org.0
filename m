Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D6C15D97B
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 15:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl3lLqFQhydWQQ4s20dmS32QZJuxKiqoFQbQKZPKHe4=; b=V+Kkwox+2TY8Hr
	s6awzpyN5peEtwmNIhw62t6ROfviJR0+xyUUjEOeqwRWrzqfwMjSkO5jVXRerU1ZzWXeSTip7s1QZ
	TCVtvdJeEtuiqQZHrNKMb06OyKej8Me6Ov6YM/2LyE3RXsAaZNkOA4kuf4mA9GssBLvpmcCdK2uwC
	DDnrMq0wolTi7gCrbTyyjVv6qi6FW3h0QWhi+IzjeKJAXmHq6C/a1NHB6v8iVpHA+Hj0zW/VXy8W/
	Qo56gx2Q1k7eVyfky2LgNbLpkJoy+EIP8QR1jy4FotIGAx8w5c2+jJO6RgOpVmJvfsev/IANIf7wZ
	ozhTwgc6BZzBAR1v1cZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bye-0000s7-Gq; Fri, 14 Feb 2020 14:29:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bya-0000rl-3w
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 14:29:53 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 414BD2168B;
 Fri, 14 Feb 2020 14:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581690591;
 bh=BV0TVDmo7Y2EP/tkJUOPVFfO9ED38vm0i1ntGPQTCDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N9UeXtEjyttE5eQ/u1CbjLbwN1a15I9iGXN5ZUuEHp5zXwwxtAu/nreQv5N++e0je
 NNUSGHmYgzveuRU0AaDt1aLuNHOU/TEaE+9TqcwBxbh//MzSOYgY0BDV8wsMPQQ62C
 dO2kM5qIKTh1JTge0uCU3RCZ9G2/xehwTegIz228=
Date: Fri, 14 Feb 2020 23:29:48 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] fabrics: ignore hostnqn file if its empty
Message-ID: <20200214142948.GC9819@redsun51.ssa.fujisawa.hgst.com>
References: <20200212200158.14237-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212200158.14237-1-sagi@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_062952_179941_83AA81B4 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:01:57PM -0800, Sagi Grimberg wrote:
> If we read an empty string from /etc/nvme/hostnqn we should
> ignore it instead of passing an empty string to the
> driver resulting in the error:
> 
> nvme_fabrics: unknown parameter or missing value 'hostnqn=' in ctrl creation request
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>


Thanks, both patches applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
