Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DA61BEE6
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 22:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKt2M94aRhN1nIT6CjOT5HRSXoaDxeMB7Ew2YEZl1ns=; b=XEEA5tttpg4F+I
	LzvhlIettAqF3mU9d6CAEWqogNEexFoTfUkwPppSiDJSuVvLpja9oeTY8yD+ESazDKz0NWbN2Vwzl
	4YqC7Z2U2p6wGslAkDcbCS3tlyUpmYTOg5yOT2NfxXIzOSCxnn8ZyK5U1AzPODRdNRH9MmCER0sv2
	M1fjMBV6Hn195KNSrfbIdprLgETCkmg15Vr+DWnMgI1W20vyxBV5eVJ5BhYeeDoOrNJb2Wjo9yFo+
	025JSptEcbD4oIZDkvRvvVTuvHhqQe3XCvPYgAgIDLGhsFmK3tLfWMWu2Yqi5oTX8iHZUjvyK6O+O
	koySJ8ZDMljfiG1faa1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQI1i-0004T4-HR; Mon, 13 May 2019 20:58:26 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQI1Y-0004Lh-Hb
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 20:58:18 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 13:58:15 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 13:58:15 -0700
Date: Mon, 13 May 2019 14:52:54 -0600
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Message-ID: <20190513205254.GA18823@localhost.localdomain>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
 <20190510214255.GA11723@localhost.localdomain>
 <20190513132517.GB2661@infradead.org>
 <20190513164933.GC15437@localhost.localdomain>
 <SN6PR04MB4527DBCEE5CD5A54965EA0C4860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB4527DBCEE5CD5A54965EA0C4860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_135816_719421_759483E3 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 08:36:32PM +0000, Chaitanya Kulkarni wrote:
> I agree that passthru means we should just passthru. But user-pace
> doesn't have the access to take
> 
> corrective action on clearing the AEN.
> 
> The cases where Kernel is responsible for reading and clearing out the
> log pages/AENs
> 
> if we allow userspace to clear those it will create a problem in the
> kernel code if kernel code
> 
> expects the aen bit to be set. This can lead to complex bugs where,
> 
> 1. Kernel expects the log page and aen to be present.
> 
> 2. But it is been cleared since userspace read it but did not take the
> corrective action or doesn't have the
> 
>     right interface to take corrective action so it depends on a kernel
> (driver) to take the corrective action.

But the kernel still sees the AEN, and the log the kernel wants to read
will still exist. None of the logs contents are latched to RAE, so I'm
afraid I'm not seeing what problem letting user space re-arm the AEN
creates. Could you walk me through a scenario that triggers such a bug?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
