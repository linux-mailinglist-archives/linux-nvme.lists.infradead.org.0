Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A0F7FDD7
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 17:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6WIqwNXXH9puvbeAstAhWXSWVaOCCjfFyA8suT5t68=; b=AUJ4FCOTgUFk1i
	Tm8rCm9c0oBs4xeHlSBTwumhjF11bCZsQg/qykEwAGBBpZn5GL1efLucHSdypWLxqgnwkNjAwc+qV
	DFZ7OaSbNDvTVNhdDo1EUY66zXl9X9dWeTLV9OgwtXQwjURQ2dr5qsF1/nxsnP+/r9w7D1b5tSt2+
	GgKJes2vOITj5CSdQ0KcIr5l5WNzHz1o5mgp+AXYCvKgyLcux6UDQBcrgxW0fC6GB6kSJOTS0m0OD
	u8WDMwwNAAG8HRLrj5zGfcVvLNzukU1qYoD/yoh0LEUzzmROzvDmi5/KaOYnykQ6Kt90z62PfTnFq
	Ro4YQRPva/60u7U0MtQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZrM-0000mm-Fd; Fri, 02 Aug 2019 15:52:48 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZrG-0000mL-Oa
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 15:52:44 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 08:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="197241880"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2019 08:52:40 -0700
Date: Fri, 2 Aug 2019 09:50:03 -0600
From: Keith Busch <keith.busch@intel.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v3 00/10] nvme-cli: nvmf auto-connect scripts
Message-ID: <20190802155003.GB18214@localhost.localdomain>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_085242_814071_96582B66 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 04:13:38PM -0700, James Smart wrote:
> This is a formal posting of the patches, not an RFC.
> 
> This posting is a combination of the RFC postings of nvme-fc
> auto-connect scripts by Hannes, Sagi, and I. The auto-connect
> scripts are utilized on nvme-fc and for persistent discovery
> controllers that send AENs.  It does not contain the code that
> handles the persistent discovery controller AEN and generates the
> event.
> 
> The auto-connect scripts are now commonized with the exception
> of the nvme-fc boot connections service.  It's expected that both
> the persistent discovery controllers and nvme-fc can post the same
> udev event. Whenever the discovery aen generates an event, the
> new --device=<name> argument will be used to identify the persistent
> discovery controller. When --device is used, the other connect
> attributes will be specified, set to the values of the discovery
> controller, and will be used by the cli to validate the device is
> who it should be or a new discovery controller will be created.
> When nvme-fc generates it's events, it will specify --device=none
> and specify the discovery controller addressing arguments.  If a
> persistent discovery controller exists on nvme-fc, will do nothing
> special and AEN's from it will follow the --device=<name> syntax.
> 
> The udev event handler supports both the new event to be used
> by discovery controllers as well as the existing nvme-fc transport
> event. The nvme-fc transport will be migrated to issue the new
> event syntax. The udev script will continue to support the older
> style nvme-fc event info in case the cli is running against an
> older kernel.

Series looks good to me, patches applied.

We've a lot of new stuff now, I'll plan to tag a release within the next
week if I don't observe or hear of any alarming issues.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
