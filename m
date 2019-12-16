Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1D81209EA
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Dec 2019 16:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gObwF9J23MYtrXDkFCrR7xJPpThR3PZ3o/TVXL3KBPU=; b=HOYDGs3ndHZ4pn1Tvv0fMGjUU
	aqp9HtsB/RChux26P64Cl9lTlHtl/tmF18WRn9vBcBpa1L2WwrF6uP+Mpzjc3YXoySdyzoFOSyXOY
	2/HhOMAm+y1hsXdGoxxe5ud47vB9ao2RpYhPMCOxvCW0T1YIJ0FyIEqp4DhO+kFaarVwep4n5fEW3
	sSDXJ90mXsDp/RabgsbRFwJC3hlRuzx5/FYXwVaFUUCuy+glW780jt5gJM9eLcnHAcM0PYyjdvXYa
	1cXDzbjb/DQJCuJY6fWvnKeMt2gWRqyg8AMD/VhoH2aTDZj32AwYBnh7Rw0E2FX9u9PxXz/x9eGI/
	ZuKoBEvxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsU1-0004Xw-Cg; Mon, 16 Dec 2019 15:40:29 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsSk-0003VU-C2
 for linux-nvme@lists.infradead.org; Mon, 16 Dec 2019 15:39:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 07:39:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="247073498"
Received: from unknown (HELO [10.232.112.29]) ([10.232.112.29])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 16 Dec 2019 07:39:09 -0800
Subject: Re: [PATCH v3 1/1] nvme: remove unused return code from nvme_alloc_ns
To: kbusch@kernel.org
References: <20191127171743.32730-1-edmund.nadolski@intel.com>
 <20191127171743.32730-2-edmund.nadolski@intel.com>
 <20191128073015.GA27403@infradead.org>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <4cc7d687-fbd5-45a4-61c8-91aa97728f63@intel.com>
Date: Mon, 16 Dec 2019 08:39:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191128073015.GA27403@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_073910_416993_5A5015A3 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11/28/2019 12:30 AM, Christoph Hellwig wrote:
> Looks good,
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Keith, all... any further feedback/comment?

Thanks,
Ed


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
