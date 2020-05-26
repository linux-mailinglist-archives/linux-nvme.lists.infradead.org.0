Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7751B3A1E
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 10:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5tLXA2aWy1U0MH08LBIEAYuTuup5Hc1jOt/VRqF8jw=; b=FPYcuBtOl3LMgN
	FYA4RgU87rOJEnCkqH2S1H5UYMEcz3SH1ZCvs3L4sBqP1xqGH1a2OhWDV17JXUtj0u5do6F4XrWw6
	rGKSqh3P4ASBHEn+fOxKAZfqUBSGRuKra+TBAbcOr3UeU7zNyRN3AVQ8rtaovRDFNGiECaGsvBehU
	vAjQrFLghNARKjXfM0g4pKCoKnSl1ZR/1PjqqzSizr96Oz7hHP/SB1ZBu2dAt3Qg03fGpunA+yu2s
	WmYmxhLHV6bzZ7w9o8ybVAmVxRDDBAFuRDg+sFVK2EdvDNKf6MPMthCzgrd8Nq/djPo2u9WkWoeMQ
	v9P6ukzdGCkKurowEBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAmp-0005lN-D1; Wed, 22 Apr 2020 08:31:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAml-0005kJ-RU
 for linux-nvme@lists.infradead.org; Wed, 22 Apr 2020 08:31:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 789C468C4E; Wed, 22 Apr 2020 10:31:09 +0200 (CEST)
Date: Wed, 22 Apr 2020 10:31:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 3/6] nvmet: use type-name map for ana states
Message-ID: <20200422083109.GA25341@lst.de>
References: <20200419235242.60355-1-chaitanya.kulkarni@wdc.com>
 <20200419235242.60355-4-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419235242.60355-4-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_013112_041284_D1DEEC09 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 04:52:39PM -0700, Chaitanya Kulkarni wrote:
> Now that we have a generic type to name map for configfs, get rid of
> the nvmet_ana_state_names structure and replace it with
> nvmet_type_name_map. This also now allows us to get rid of the found
> goto label which exists in current code and align code with
> for-loop-compare-success-return pattern.

I actually much prefer the goto that keeps the success path out
of deep indentation.  Same for the other patch that does the same
move.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
