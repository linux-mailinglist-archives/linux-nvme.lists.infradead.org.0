Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58147115971
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 23:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bUcOCxLAMmHAPCcEsXkrSBWQFoysyxaiklKEjt+qq0=; b=GOi0l5Yu01+ZEN
	QORm2ppc++sJgHh6dNO662+4Mjg92+9Q+C7bBi+4RdSvsbMkvFBvPTQ4T4d33kbDvNvoC+DXpsme7
	1sKs4VcBXtElW+Ok9o2qzUdTNo/nAZKo6UR9MW9tzeAQUANqcX5V6p0C7z4UnteGcXIBADyL9RzU6
	OHgFuJbKaReStkG2eUxXvnGgjySRIuO1Hc6HyA8jBs29+B8Cia9fh3y+pa78mYEbS0/qqXOWe6fjy
	/VQD3MY54wTK2EwAl01LK0fyv0Wgw/aiOmXKyyfBEDc6t/vc55ldaUEwGDtHq0/nkNa81dGBgffCb
	QNihDyBpO+T3FtBXOkEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idMYI-0002Yy-Jj; Fri, 06 Dec 2019 22:58:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idMYD-0002YR-Og
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 22:58:18 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE5B42173E;
 Fri,  6 Dec 2019 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575673097;
 bh=AnV+8wIgYOTeTnUSCsbwYt6tyP/Cu3B1BByXfg0gsa4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NmPkMPrktUPxrTQmW6yIy0Xvtt3lZEoXyl0W7qB3XciN+bk0H36fAaRiVF28rPueQ
 bJY/lvhymV/IVVy5FBdUxvA4Rr9D0ejuonFE0dDQdyTz6sOVZtTlA5tJYjeBVmfgGJ
 SLOUQtcD35hPhxDth2fLZ40nZMSzThXulbGj/G2o=
Date: Sat, 7 Dec 2019 07:58:09 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: Regression: kernel 5.4 does not show NVME SSD
Message-ID: <20191206225809.GA2549@redsun51.ssa.fujisawa.hgst.com>
References: <m3fti36pll.fsf@web.de>
 <20191202153925.GA8561@redsun51.ssa.fujisawa.hgst.com>
 <2df2848e-aff6-98b7-4042-0935afb78e72@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2df2848e-aff6-98b7-4042-0935afb78e72@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_145817_822114_AD54BDCD 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ingo Brunberg <ingo_brunberg@web.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 02:44:23PM -0800, Sagi Grimberg wrote:
> > This one should have only returned the error if < 0, otherwise we can
> > proceed. Will get post a patch shortly with a 5.4 stable request.
> 
> Should we have something that is more granular rather than any positive
> error?

I don't think so, otherwise we'll be chasing new errors from disfunctional
controllers. As long as we get a response of any kind, we can use the
controller. It's only when we don't get a response, which is what the
negative return codes are for.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
