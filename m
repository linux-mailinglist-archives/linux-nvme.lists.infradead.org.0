Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9409112FB5
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Dec 2019 17:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjJLOCUUByW0hIiTuSGMJMX4wHnHNBzvm0QRyC4Hwk4=; b=s3wR7Xnud5yc+n
	lrNahasbtv/r/L0MYWsINZ/c9V2fTul7g7Lzht0BrZRTZsG6irgrVUCuneT8wDWIq8Msud4idEeRr
	d4iznrHwOnoUbTQlocP6VG2pFSGtRRxXX+ARopvqgdA8kRJg46gP/sPkB7B9mQYCV9TYojDLd5csN
	9+UHYLoFt+mc0MsDQX3QN8ka/BYIhSoSs9L40kW6fOTLIvu2/7OWWBPAjpmrcmPwW9lBq/3swUhRD
	CZhxsopKWpS/Jh105MOBW+VliIAQ62oOMI9NBULdDWU0fjx4teDCPqkyitrPu8YnO+fbpP+rz0DKL
	9LcjgnWh+clXTKsYcTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXFv-0003rt-JY; Wed, 04 Dec 2019 16:11:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXBr-0008O4-6x
 for linux-nvme@lists.infradead.org; Wed, 04 Dec 2019 16:07:52 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D13B12077B;
 Wed,  4 Dec 2019 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575475665;
 bh=TvsiV7z05ZPPiuH1UjCEgrEEoOtF9YCP0XVKXwDfypw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C21HM6mOeKHV8ha0UJbwxrcoqL27a/bbh59FvUwY8tFQ1DPXtrQbMfIpw9Y8tA/Jx
 hFXEfqox6mOtDydMJsDxBg4MJam6CGEA4KYGsNlKDyQRs2ZRyP55xvU+kt5cUzcter
 G/xKsL9JsNjxK8py93/ZOQdKSse1L0yNTir1lcqk=
Date: Thu, 5 Dec 2019 01:07:37 +0900
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH V2] nvme: Add support for ACRE Command Interrupted status
Message-ID: <20191204160737.GA1791@redsun51.ssa.fujisawa.hgst.com>
References: <8D7B5AD6-F195-4E80-8F24-9B42DE68F664@netapp.com>
 <24E2530B-B88E-43E7-AFA2-4FDA417B6C1E@netapp.com>
 <20191203210015.GA2691@redsun51.ssa.fujisawa.hgst.com>
 <04835a2e-1769-36c9-63b8-173f247c862b@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04835a2e-1769-36c9-63b8-173f247c862b@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080747_406899_E2D6B494 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Dec 04, 2019 at 02:26:06PM +0100, Hannes Reinecke wrote:
> > Why is the controller returning the same error so many times? Are we
> > not waiting the requested delay timed? If so, the controller told us
> > retrying should be successful.
> > 
> > It is possible we kick the requeue list early if one command error
> > has a valid CRD, but a subsequent retryable command does not. Is that
> > what's happening?
> > 
> No. The problem is that CRD needs to be observed _in all cases_ whenever
> we get a COMMAND INTERRUPTED status.
> Currently we're only observing CRD when multipathing is _not_ active,
> which is wrong.
> 
> And this is what the patch is trying to achieve.

Right, I totally got that part.

I just don't understand this follow-up from John that I cropped it out
of my original reply:

> The alternative is to stop incrementing nvme_req(req)->retries in nvme_retry_req() when CRD is set.
>
>  @@ -258,8 +258,8 @@ static void nvme_retry_req(struct request *req)
>        crd = (nvme_req(req)->status & NVME_SC_CRD) >> 11;
>        if (ns && crd)
>                delay = ns->ctrl->crdt[crd - 1] * 100;
>-
>-       nvme_req(req)->retries++;
>+       else
>+               nvme_req(req)->retries++;

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
