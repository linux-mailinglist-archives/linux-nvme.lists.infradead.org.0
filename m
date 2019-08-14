Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326BE8DDC9
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 21:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR/eCMr2OmbHVvfs58TZcJvlGhwFjwztxyx7N61q/kk=; b=XoL0oC40DG30+N
	9xOYWN+V9BrWfUToNHNayu8Z7VHbbcadAQKlh/iT7dX86AUbsLNxUvJ3H95HtpRfUMFYYUlNoXBjY
	UhAj89sPCzlLX7jTzq70TYr341Mfi7SiGO8Xgl3sndtF6qcpodaiLT4o8d2PjLpDZ6l8FXoh2t9P1
	qGL7eryVykn4dNyP6MK9qZcAdmM/IkqWC5AG/OZdiShxP2qs2BBSzEja4zqyp8ULPoHREylBzedLD
	x+tii3icSjYvVsmI/4/4vCHem0p/wQAVAsJbRiHaMQBb0cMIsHC3J+UuD+LVvpxqUkQf4juQpR7y9
	qSV8wZPqWRnjpvaRSzpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyfR-0004gP-Jm; Wed, 14 Aug 2019 19:10:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyfG-0004fr-DD
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 19:10:31 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 12:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="352008658"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 12:10:27 -0700
Date: Wed, 14 Aug 2019 13:08:15 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
Subject: Re: [PATCH] nvme: Use first ctrl->instance id as subsystem id
Message-ID: <20190814190814.GC3256@localhost.localdomain>
References: <20190814142836.2322-1-gpiccoli@canonical.com>
 <20190814160640.GA3256@localhost.localdomain>
 <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
 <20190814162754.GB3256@localhost.localdomain>
 <b5b471cc-8935-cf96-d55a-a7dc731cb0d6@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5b471cc-8935-cf96-d55a-a7dc731cb0d6@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_121030_460709_3B02804A 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "jay.vosburgh@canonical.com" <jay.vosburgh@canonical.com>,
 Dan Streetman <dan.streetman@canonical.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 11:29:17AM -0700, Guilherme G. Piccoli wrote:
> It is a suggestion from my colleague Dan (CCed here), something like:
> for non-multipath nvme, keep nvmeC and nvmeCnN (C=controller ida,
> N=namespace); for multipath nvme, use nvmeScCnN (S=subsystem ida).

This will inevitably lead to collisions. The existing naming scheme was
selected specifically to avoid that problem.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
