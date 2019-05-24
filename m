Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3BC2A01B
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 22:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tt2oV1tbvDq8FiZBRtMrkFmEINsVGAUjy0HX9tyCkRM=; b=ge4vtenbOoX4vL
	w5Qe1tiuZ6V31lVjCVvmYB8c4Plmi6OOE8XS1xwhmN5EOlCX9+wt6EMjeU9FrgVcqPfHWbNcaFaM7
	wIN06I0ZUwMltJD+EiQTHftYwGnIksx2Qsa4TNpVZdcvGR1n6pASOpGaPzkIT/8NOp4L6sSTDn8tr
	roBXnQ7uYcODkFbxY/LiUGAnQTeX0lio3AkY1koCfdVa6BI0DMd55zESMWv608GKv8T3dUKj5ioTi
	vqRGz0WL2/ml2IuFy3LcYyQyuRDT8WSQQhUy7eyqT3M4C2sEf096Z2wXbDdMz583TIIsvwhKicneX
	fQDTmI5izIgSZs7E00DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUH8R-00063z-1D; Fri, 24 May 2019 20:49:51 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUH8K-00062w-PM
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 20:49:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 13:49:44 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 24 May 2019 13:49:43 -0700
Date: Fri, 24 May 2019 14:44:44 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme: fix memory leak for power latency tolerance req
Message-ID: <20190524204444.GB17321@localhost.localdomain>
References: <20190517023007.140656-1-yuyufen@huawei.com>
 <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
 <20190517183614.GB25092@localhost.localdomain>
 <258cd66e-9d54-6e5b-0dd5-9dbf0ba84dd8@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <258cd66e-9d54-6e5b-0dd5-9dbf0ba84dd8@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_134944_840078_5856B5A3 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Yufen Yu <yuyufen@huawei.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, David Milburn <dmilburn@redhat.com>,
 "luto@kernel.org" <luto@kernel.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 01:20:08AM -0700, Sagi Grimberg wrote:
> 
> > Thanks, applied for 5.2
> 
> This should probably be sent to stable as well...

Want to place bets on if stable-bot auto-selects it? :)

But yes, should apply to 4.14+.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
