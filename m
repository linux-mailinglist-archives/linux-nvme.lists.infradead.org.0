Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA52259A7
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 23:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aL36cXrbO2r7gZHO8SK1K/V4HxI1ef9NLrPZxMgcYN4=; b=RM3jt7hRhpoPAEXBNiPB0uHuM
	Cz7BCwDAbu1Uh3QYhzdkoPY92MlMrE6ccZosVeArlXCLKlvZWHK/luU07W7gRKQSn8f1OJfnnwnDY
	bMC0kAigKEXsv7Nknsis6/TOEFqZX/CfTiTR6RWeTOagc+Uwny1ND5SRnXJa471GHZB7IsV/Y+K3T
	0U5PgxLJ/B//V/9xkK323npHc72r2E6dLCiD/5Ppq9OekKzDebllTOC/v9M++6GwY1AuvdP3C1lGr
	4nCqnICYl3tVe6N0r7m8gFiTe1iTAoztpRjgzUKqUnnhNEPjGsIhoTI9sqquHgn/JTenLgECQt3Z1
	SfMMTOYSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBxE-0002p5-F6; Tue, 21 May 2019 21:05:48 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBxA-0002od-6i
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 21:05:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 14:05:43 -0700
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 May 2019 14:05:42 -0700
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <44154394-c0a0-4895-d406-ea357a906cfe@intel.com>
Date: Tue, 21 May 2019 15:05:41 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_140544_249639_098D8865 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/21/2019 10:04 AM, Akinobu Mita wrote:
> +static int nvme_set_over_temp_thresh(struct nvme_ctrl *ctrl,
> +				     unsigned int sensor, int temp)
> +{
> +	unsigned int threshold = sensor << NVME_TEMP_THRESH_SELECT_SHIFT;
> +	int status;
> +	int ret;
> +
> +	if (WARN_ON_ONCE(sensor >= ARRAY_SIZE(ctrl->tzdev)))
> +		return -EINVAL;
> +
> +	if (temp > NVME_TEMP_THRESH_MASK)
> +		return -EINVAL;
> +
> +	threshold |= temp & NVME_TEMP_THRESH_MASK;
> +
> +	ret = nvme_set_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
> +				&status);

I'm not sure about best practices here but since 'status' is unused, you
can pass in a NULL pointer. The called function deals with it correctly.

> +
> +	return ret > 0 ? -EINVAL : ret;
> +}
> +

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
