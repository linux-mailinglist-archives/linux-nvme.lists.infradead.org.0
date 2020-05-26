Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA1A1C7331
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 16:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc/5EC+QzfOYpnbdBZpMPnREScZmNggnKDPbGpk1agw=; b=u4QmC7lZMjQj31
	tpJhj9GpvjjFyKmJ+B2Qt+L7I38upd+7nerzg5u2PWR1AlJCy0YKp3N7jd9/95BQTgbufyKV6hhYF
	hmlIchc9miGej02Ohrghu9LB4zFPgZo78CCOH0uyPA/4T4eg4so1aQRblOVJJlnu4orJg5FSGz5aA
	QKECoKl1m45F1j7C9CGQeluZA/OQ2Wj71qbVv5kHyUFkWb2bO4Q2Py9qBdLwg7wcbwx01UIj4K6GR
	wq9cxpg/GDl/8AAlfjBoQrLzw+uZXWTbpSsRgX9iusfwPHzxQ8nsO6vuMMJrWMqE8OD8cHcPWU+N+
	YZ56Nte1D2sHJ4gTmV2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLHu-0002Rd-SL; Wed, 06 May 2020 14:44:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLHq-0002Qx-Iv
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 14:44:39 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 967CB2073A;
 Wed,  6 May 2020 14:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588776275;
 bh=/farS+W6/FsuN9fPZbVDk0w4G4pOKHKoSTWzsgHI2ik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g8SkUGNK73wfzGgfmDInACcCmM2SDRQhX+A/VUYYbaCmIkUcMppnP2WEpNn09cV9n
 p8BYNHkiqebNXYy/uGitzQ8APP3uXi8dgPMckj8jxW+EMEGpK/y68IQl14YdnL6t5z
 s5uMqkt6vvglWsMATvkQOZoDvFR1+mqbwSRu44Zo=
Date: Wed, 6 May 2020 08:44:34 -0600
From: Keith Busch <kbusch@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200506144434.GB54933@C02WT3WMHTD6>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506132429.GA21451@avx2>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_074438_646111_7AD028CC 
X-CRM114-Status: UNSURE (   9.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@fb.com, John Garry <john.garry@huawei.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:24:29PM +0300, Alexey Dobriyan wrote:
>  static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
>  {
> -	if (++nvmeq->cq_head == nvmeq->q_depth) {
> +	/*
> +	 * Can't pre-increment ->cq_head directly.
> +	 * It must be in [0, ->q_depth) range at all times.
> +	 */
> +	u16 tmp = READ_ONCE(nvmeq->cq_head);
> +	if (++tmp == nvmeq->q_depth) {


This looks correct too, but there's no need for the READ_ONCE access,
or the pre-increment:

	u16 tmp = nvmeq->cq_head + 1;
 	if (tmp == nvmeq->q_depth) {

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
