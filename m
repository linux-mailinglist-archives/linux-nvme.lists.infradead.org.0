Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF501F66C
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 16:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wY44+UUjPE45ETzeIAVOFd65jNrzI7wx8DL77AFZFwc=; b=oMLnPkyVUQ4S8I
	N4K1rPVxofxgli+K58aQ/RcLIrQjRtQlYN2BVm/Qm4uoavu/Xnxe9iOIKmPKwAUVAhfgq5vQ6Yiyt
	sHUT0jGUCjI6/1FaGMis6hCg77RCawFPiKNs0Bn41pGXlQA/mQQUDis/nzG34Cm0kO8K0aJc36TQW
	MBcA7MeB4Hhpei1lgo43n42JWf5iViEaqS7Xf9HZ5l9hEZ6dTTE/NQkC3YdR96QTFh6697mP7Esr/
	GySEKifD8mVbvEZb+qCh9j2+3QlKNCkEp+YkgBRmOPU19eJRtjpZzfeCrj9Bd4kL0FtYLm8CN6SWb
	uahYl8fLb+eMvnxwOt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQulX-0006Cv-CQ; Wed, 15 May 2019 14:20:19 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQulS-0005tw-I8
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 14:20:15 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 07:20:06 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 15 May 2019 07:20:06 -0700
Date: Wed, 15 May 2019 08:14:48 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Tay, Kelly" <kelly.tay@intel.com>
Subject: Re: [RFC/PATCH nvme-cli] nvme list- separate controllers from
 namespaces
Message-ID: <20190515141448.GA21433@localhost.localdomain>
References: <EB8F1E865882C64ABCEDE282942116B98F467B@FMSMSX102.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EB8F1E865882C64ABCEDE282942116B98F467B@FMSMSX102.amr.corp.intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_072014_617136_8C0569D0 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 08:09:55PM +0000, Tay, Kelly wrote:
> Separated controllers from namespaces on nvme list
> -controller that is not enumerating namespaces is still represented to resolve confusion around missing devices
> -prevents duplicate printing of data
> 
> Signed-off-by: Kelly Tay <kelly.tay@intel.com>

The only problem is that we've lost the serial number on the namespace
output, and since multipathing naming conventions doesn't mean
/dev/nvme0 is the controller for namespace /dev/nvme0n1, it is just
going to be that much more confusing for people to match up which
namespace goes with which controller.

I'd still like to take this anyway, but I may have to make some
modifications on top of this. Perhaps a ',' separate lest of controllers
that go with the namespace would be okay.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
