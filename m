Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED3316C37
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 22:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0dD9MR/VfBYRVAhRNzMZnteLilZb3n5ogt2ftpO6y0=; b=u7FcwzIh0hpdP63r6bIqidcRr
	e44smxE6peWJ25WuYDF+QVKxNLg6WYDvzCwqEqD0mn34PCwbsqTKzCcDebXpAfCBzr5o4NEgz9/Vs
	dOeBXQDcdWltkEOfBSXiV3TJT/lFTBD/GOshmNUVLaShjrfYlerZH+cLuglLudSoYbA/ZWun5ljEc
	wRsDZz45bdRGfEepT1SQip7PQldylGQGHd2brxDK98m1HQb1tCJERfvblgh4RNBL6+pwAOaSmSwhd
	YhYgdkfchwyjlaYytkEFqakLbKPJO8yb/NWl3Me8zkVZ55x1gqP60nLMGJ8NQH+5LJiHeLFNYoLAc
	kYJqg8U9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO6kf-0000oh-Q6; Tue, 07 May 2019 20:31:49 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO6ka-0000oN-5l
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 20:31:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 13:31:43 -0700
Received: from unknown (HELO [10.232.112.171]) ([10.232.112.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 13:31:42 -0700
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <a4ec2c1a-1ff7-52fe-07bd-179613411536@intel.com>
Date: Tue, 7 May 2019 14:31:41 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_133144_226879_D7F8D8FC 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/7/2019 10:58 AM, Akinobu Mita wrote:
> +
> +static int nvme_get_telemetry_log_blocks(struct nvme_ctrl *ctrl, void *buf,
> +					 size_t bytes, loff_t offset)
> +{
> +	const size_t chunk_size = ctrl->max_hw_sectors * ctrl->page_size;

Just curious if chunk_size is correct since page size and block size can
be different.


> +	loff_t pos = 0;
> +
> +	while (pos < bytes) {
> +		size_t size = min_t(size_t, bytes - pos, chunk_size);
> +		int ret;
> +
> +		ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_TELEMETRY_CTRL,
> +				   0, buf + pos, size, offset + pos);
> +		if (ret)
> +			return ret;
> +
> +		pos += size;
> +	}
> +
> +	return 0;
> +}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
