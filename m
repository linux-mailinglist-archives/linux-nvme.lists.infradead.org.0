Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE1114E6B6
	for <lists+linux-nvme@lfdr.de>; Fri, 31 Jan 2020 01:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xGee+SCMR97wAgGZVeodCxqo2pZ8PsCqAE/4BGSFKM=; b=lNyecHTHqO9PCR
	fBH4p0rB8jRzJ4sIEC7v7fmIf8de/2vbETSlZK5hxmDtqpJmC1FIB95Drpdegbi0iaH9TLU7Ulbvl
	Gu29iemXvL41ugiYI++dB9+hu10sRExD7ITpGHFBApUgd7tePC5kr0oDov3GyFVKGocTUgIAjXVvm
	CwQ6Xy9JV4AUeZPezmnlUL8tkgT1Wo3Oq4UnIyg7xSdF417nYOShllV8gNhCGpsHpkzgXrweFqJAG
	wJMTb1PNfBV1yvUPeauJ0N4D9vLO+YN8ldzG68r2YF6Wzh9Jyfq3TOtgbxT7ZO+eyaDZJLECBgroq
	OGIg/GYNa8ROVavWMHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixKTH-0006sS-4A; Fri, 31 Jan 2020 00:47:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixKTC-0006sB-I8
 for linux-nvme@lists.infradead.org; Fri, 31 Jan 2020 00:47:39 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 627B32082E;
 Fri, 31 Jan 2020 00:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580431657;
 bh=s425SEisWVOstD1mKM0ETPlkMWCbmZeBo+APkXW+3FM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b3G+kS4eSWLePfM76U6J1MF8MlV7MH3WNwQ1juSAK8hUTMWd1U6bTW3Nj6DJ5CuSo
 8Olc6jim2IbA4qkMjiA4fPAZonWy8RZ7LOGY7l75bXFMYPO9Rbq1wdCG2BUKXmAzIf
 hE0FBto8ZkFViATUZJOjfyWgc9W0VzyAeXSsWWxg=
Date: Fri, 31 Jan 2020 09:47:33 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: remove nvmeq->tags
Message-ID: <20200131004733.GA8673@redsun51.ssa.fujisawa.hgst.com>
References: <20200130184024.338264-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130184024.338264-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_164738_620599_3BBB9350 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 07:40:24PM +0100, Christoph Hellwig wrote:
> There is no real need to have a pointer to the tagset in
> struct nvme_queue, as we only need it in a single place, and that place
> can derive the used tagset from the device and qid trivially.  This
> fixes a problem with stale pointer exposure when tagsets are reset,
> and also shrinks the nvme_queue structure.  It also matches what most
> other transports have done since day 1.

Thanks, applied for-5.6.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
