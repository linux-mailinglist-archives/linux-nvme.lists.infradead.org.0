Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7B81636F1
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 00:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFRv7yAcNesWkwApe0rHNsKUcInB0MJuhgZR3z4lqMU=; b=TMEchPxT75RVPQ
	ojQJs7zVYShuvweJZtPhLdsvIOffeoKIWLDpNV6S+FThNpZdTddbTzjYGr+gGWsxg8Qw4KviPmVJX
	vuDQA5YAcizUtGbcNJXdTyK5i/B8dPXAln+yneab+6Uf6CeCpGFh7tlfUpW0bz+pHAYHTKp43e/If
	Y9Weq6J9B9NEJemw97XSYYTxkV5u4kfnSCU5JEip/disk/HksacYCh4cZ2SJw3p8WbMZJtvofHEJR
	fCkqetS44gXQDW6jane4TUm3dP+ODvkl02iRz/UInmB0Juw3a5iao9RAyFcZ1XvNV0yFw+q3uauar
	w9gYKD4P/c2SS+XEz6Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4C0V-00028i-Vt; Tue, 18 Feb 2020 23:10:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4C0N-000287-Ez
 for linux-nvme@lists.infradead.org; Tue, 18 Feb 2020 23:10:16 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FE8824125;
 Tue, 18 Feb 2020 23:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582067413;
 bh=v22+PgN7H/B4xPUCRQ1DsVyP8e4CnicZgkLDe5nMRM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzkUrxa0vOpSt+Rq1R5CHO5S/9jEyieSZfu0s5vYe43c2cCy7uCdSwHOEuBgDXhTb
 QdxOVQ4Qv0IcDRTxIDmGxCBWq+ILQvyIGNcSH+sMozXWeW/eiyl4ua+S/xTq5JsniD
 6j13BRytmVUpKH7tE2krnYTz0WGdseYhtxHNc6L0=
Date: Wed, 19 Feb 2020 08:10:07 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 0/4] nvmet: add set feature based timestamp support
Message-ID: <20200218231007.GA18306@redsun51.ssa.fujisawa.hgst.com>
References: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_151015_607251_5B5FCCE1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 01:43:34PM -0800, Chaitanya Kulkarni wrote:
> This is a small patch-series which implements set-feature based
> controller timestamp feature support for NVMeOF Target controller.
> This allows host to set the timestamp using set feature and read it
> with get feature commands when controllers are distributed across
>  different systems. We return the value set with a Set Features
> command for the current value plus the elapsed time since being set.
> NVMe [1].
> 
> Regards,
> Chaitanya
> 
> [1] NVMExpress Revision 1.4 (Page 220) Set Timestamp Origin -> 001b.
> 
> Chaitanya Kulkarni (4):
>   nvmet: use nvmet_feat_data_len consistently
>   nvmet: add support for set-feat-timestamp cmd
>   nvmet: add support for get-feat-timestamp cmd
>   nvmet: update ctrl oncs values for timestamp

Patch 1 looks good.

The last three ought to be a single patch IMO since those should really
from an inseparable package deal for this feature.

My only comment on the implementation is you need to initialize nvmet_ctrl
'ts' and 'local_ts' on each reset so that we have correct values to
report in case the host never sets the timestamp.

As to why we'd support this feature, the spec says "The use of the
Timestamp is outside the scope of this specification". Is there anything
interesting we can do with this?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
