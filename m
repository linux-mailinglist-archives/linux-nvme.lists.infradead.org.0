Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEBB1B6569
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 22:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPOXlR0Q5SxvYjhvyfcDex44f75uGPzSCekpEg4eXi4=; b=qIrZhjcps68s/M
	8b16WYZeqvD32RAF27twlvQGBA6ipfU52GAXYkgo8BHpEGCRIq7yR1ePGuMsleNxa3ujbndN0cdY7
	R5EiC3w7t99GVi6QVLYRgxPHHYroGa/VO1MeSK8KX5VxI+571wcFqKw3xaFXSv8R8LomXBLpLGW+f
	IXr701xyYre6m19vkv6eETQeR+rALrPELUAt+A7UV6e+B7PzbfNs5/NUGPY5phsJnZjqqKCTy1oJt
	NDjfkW5pdE1XBUh1NqkmDqMcoMjRYcnv6cKbnQSxWOIUMGNW/gsmYXLbtdYeEQXTPJFy5IKezGH9Q
	ORJ9sGLgtFIJTIV9OyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRiUK-0001Nf-J5; Thu, 23 Apr 2020 20:30:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRiUG-0001MA-4h
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 20:30:21 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A733520728;
 Thu, 23 Apr 2020 20:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587673819;
 bh=lg92oqONrwlQh84o7sbwliXtwsTG0cLl5NpJS5cOKhI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fuM9SqEuC0RdRDEBMuh7f7ZpWswk/25EKncS6G3l0noLNQFo8j2LP+cXGows7NMBB
 EsAImCvSpAWgtN77REi9n5lxFJwS6zEgvmpScsJOn8JQxHRkSwVlQHSC+dLdjsCj5Q
 ZrfwUaUYZERX7RWTJl9k8JWKTZ4sQg+EtJCGDgkY=
Date: Fri, 24 Apr 2020 05:30:12 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] fabrics: allow traddr to be host name for ip
 based transports
Message-ID: <20200423203012.GA19657@redsun51.ssa.fujisawa.hgst.com>
References: <20200401215344.2519-1-sagi@grimberg.me>
 <20200401215344.2519-2-sagi@grimberg.me>
 <fd09956c-2b96-4b26-bb38-ebf00bf48156@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd09956c-2b96-4b26-bb38-ebf00bf48156@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_133020_205342_ED10873A 
X-CRM114-Status: UNSURE (   7.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Apr 23, 2020 at 01:22:23AM -0700, Sagi Grimberg wrote:
> Any objections with this spin? Keith? Others?

No objections, looks good and applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
