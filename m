Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8371A4230
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 07:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaKoggPXFqE8vA1+dFqwZQCOOedqrMMOanHH077em7c=; b=RGm7Js/VGmSxsQ
	2j2b5GlWUMzcZe/R/UVy3XTg6oF+srk6OhgKYqMEYpcsCn/6HqUk6ylqxVc6qK/Cvk7ktzzO2pePj
	0EwtJXGWQNE08wyzCx80nk1bq+Q3a4UywEpiimvPhbWHS3itlVsPpQZ3NEzhlpyNqoLZYnhPBkCZ/
	K7fbdWdQ31ws58T2/OvLbvOT5z0CQJ4L+RXPA64GFJQhyx8H2TJcflknJOZ3SiF7hyM1fxakq7Y0n
	8y+AkgJpYTRECpZXv/zUVcg5r1FBOENnLGT9LutY1YsJWTqO12GXyDU0dZkvwsmol4AN6BP8d8bmv
	+/mjHMvqn+ONLs4J+xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMluX-0000Eh-P7; Fri, 10 Apr 2020 05:09:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMluT-0000EO-V8
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 05:08:59 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0021B20787;
 Fri, 10 Apr 2020 05:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586495337;
 bh=fR1PjW9NZcfPrSb6h4hsIIccJVf52bqfh7694w6LsJI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6s2rsnZjGzh1afSU8JsWYSB3wdIOi/Yv8rlb9LN5rV1Guzsxayucshel01OQdnZf
 YUmRxtj2cLcK+MWNQqg+5NmTT02qvx68tajwMyBS1lLHGelEroVMD/vRo1d9zY5DDh
 YGZu7oZtW7d2LU47z8/Buddc35vMNEgXM/okDhLo=
Date: Thu, 9 Apr 2020 22:08:55 -0700
From: Keith Busch <kbusch@kernel.org>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCHv2] nvme: define constants for identification values
Message-ID: <20200410050855.GA1894848@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200403175346.1571822-1-kbusch@kernel.org>
 <bdb66a0e-bceb-51f4-c86f-d6861562bf6a@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdb66a0e-bceb-51f4-c86f-d6861562bf6a@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_220858_024282_721C5529 
X-CRM114-Status: UNSURE (   9.51  )
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

On Thu, Apr 09, 2020 at 07:34:07PM -0700, Bart Van Assche wrote:
> On 2020-04-03 10:53, Keith Busch wrote:
> > -		if ((id->cmic & (1 << 1)) ||
> > +		if ((id->cmic & NVME_CTRL_CMIC_MULTI_CTRL) ||
> >  		    (ctrl->opts && ctrl->opts->discovery_nqn))
> >  			continue;
> 
> If this patch is reposted, please remove the parentheses that are
> superfluous from the above expression.

Indeed, thanks for pointing that out. I'll send v3 if the other
maintainers have been swayed to ack.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
