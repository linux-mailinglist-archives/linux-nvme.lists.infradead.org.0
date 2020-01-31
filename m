Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2566514E6B7
	for <lists+linux-nvme@lfdr.de>; Fri, 31 Jan 2020 01:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QwygBX+lywBklDS+urKynC9mV4ENTc+nmFwWZIHlT8=; b=l282ABGx6CNl06
	S+q6oy5sq9x0Lp0hXgZe+6sZSsffOaXewYLtV8LZlaKBmE4MrP8vs/8wLG6bVL1c4LFld5HYsRPNE
	+TCkE6fsNDbR5zOfR5nNaM2Wtw7mfjKq0vGpDaharncVI12v54ZAtre7RqdbkOagw1jicUcFoOmsm
	a7r2nLH0i66SzEBgNJxbMMnWuaGd/jhxABZOIDni0aaAZzS+CZCkQwFI3y7Ma/jIpyTiR7PzZcZ0q
	FiXWL+eEFfOjzqz0miXPXo7s7GA7snkRgtyA8Hywy7r/tVenewXSJwliZiq3MImGyIy6Ok0HbZAcG
	VjDoGW46LptVaVGn3LVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixKTg-000737-Tg; Fri, 31 Jan 2020 00:48:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixKTZ-00072Z-Dk
 for linux-nvme@lists.infradead.org; Fri, 31 Jan 2020 00:48:02 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D3FE2082E;
 Fri, 31 Jan 2020 00:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580431681;
 bh=jMDUj9pCId6R8yBXK+eT1TGw89WTlxMPppzAwwUFjUQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KFHhH0r2R0Qh4SSpw0hz94n8RKtbGm5aoI/XyCETRKWjBKLggWNzqKr7l3yNfPEc5
 iXmtGkPD1V4D7Vz0RoNsuwtxYN1VusB94eLRm1IuSt7edPKyLcWJSTXAjkGXrI59N8
 EfmaAbEpqfJ3j0LiBltOvFYYk33dXe9YMtKbAWuI=
Date: Fri, 31 Jan 2020 09:47:58 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 0/4] nvmet: misc model, ctrl-id and AEN fixes
Message-ID: <20200131004758.GB8673@redsun51.ssa.fujisawa.hgst.com>
References: <20200130182934.6109-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130182934.6109-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_164801_476023_90404B6C 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Jan 30, 2020 at 10:29:30AM -0800, Chaitanya Kulkarni wrote:
> Hi,
> 
> This is a small patch series that allows users to configure the model
> and controller ID. Also, patch #3 has a fix for missing sscanf check
> in the nvmet_subsys_attr_serial_store() where patch #4 provides a fix
> to clear out the async event for which AEN is not generated.

Thanks, applied for-5.6

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
