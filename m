Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1FB25A37
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 00:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKCmjplqzYnilPqQ3+5kf+l5IoTGKVQwSif7hUKPj6A=; b=Zl6efbll64et75
	PC/IgcSaspXPbuI4qjruqJ5rlfL8G8DVKtIMntE0+CGPyAA2KhLKvftDvxiobAcTIhVlMfZEIMFES
	5LWuoN12sOl9rbOAopSntV0krcsoWB9Oce2HngYHGUhxtyfpOdoxtKVjl6qCG/pch8l5VK/GDVqev
	UcDrEjEL28XMfVxxMIw9b6/ZiKi5Ial+/fasCK0ivjCduksbNZFd2vyLTcyeOrLH8qvRMxoeFIpoj
	PUfsP69DT6rVDk+MU2I2N4HZEHtkd7Ckvim/ay6R2t9xwrLmdV1WUIL+iHVr2FezDUekAFfM+OcmT
	tYmxMyE0JjDGUvXUJB1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCsq-0006O0-4E; Tue, 21 May 2019 22:05:20 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCsl-0006Nf-8F
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 22:05:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 15:05:12 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 21 May 2019 15:05:11 -0700
Date: Tue, 21 May 2019 16:00:07 -0600
From: Keith Busch <keith.busch@intel.com>
To: =?iso-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
Message-ID: <20190521220007.GB4302@localhost.localdomain>
References: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
 <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
 <20190521142000.GA350@localhost.localdomain>
 <e027eae2-0c39-8e83-5a09-fda82d4c2a52@chavero.com.mx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e027eae2-0c39-8e83-5a09-fda82d4c2a52@chavero.com.mx>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_150515_309904_0B45EE6D 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 04:34:44PM -0500, Iv=E1n Chavero wrote:
> I think that the real error is this one:
> =

> print_req_error: operation not supported error, dev nvme0n1, sector
> 386138112 flags 4801

Weird. There are not very many statuses that translate to a "not
supported" from nvme, and none of them really make sense for a device
to return only during early boot. Let's see if that error is coming
from the drive or somewhere else.

Could you append the following kernel parameter:

  trace_event=3Dnvme_setup_cmd,nvme_complete_rq

Then get the output from after the errors?

  cat /sys/kernel/debug/tracing/trace

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
