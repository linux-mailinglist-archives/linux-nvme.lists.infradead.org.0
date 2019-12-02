Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3516210ED6A
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 17:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kY58llJnJEi+NEFdtUzojbpuJRP5oe9zAb4aC+cJCUI=; b=P+WifHRTdJEtwdEontxTvMyXg
	tOCg0gfEfGCTNu2oPxBqabNBq0GVjyxvJDSwAfiMWJWSdMYML6aqMNnjluXnXs4Jqn+1W84YiqtXX
	ntPuvWLcHha1kv5gpzO7lU83bwProBpXte/0Nx8n6JaNugpyhRDFgveBeNn2SlRgAvq+4ta0kELxq
	Y4rOg4qc6pAShWvrW+elz56T9x7y+cIZEonoTo9x6DUB16G4SI1nN8yyF2GqxajqEoPJBWbsTMiNf
	P4YMbKHPaYvgjpbKmQQhEvL5yKhpNlj5xqvxtiIwdwyXmzb0JN2hsj4Y/Hzj4/s9/x8jPV8OqXn69
	GM09owBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibopQ-0003zE-E0; Mon, 02 Dec 2019 16:45:40 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibopL-0003yW-FV
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 16:45:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:45:32 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="208145143"
Received: from unknown (HELO [10.232.112.32]) ([10.232.112.32])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 02 Dec 2019 08:45:31 -0800
Subject: Re: [PATCH] nvme: Namepace identification descriptor list is optional
To: Christoph Hellwig <hch@lst.de>,
 "Nadolski, Edmund" <edmund.nadolski@intel.com>
References: <20191202155611.21549-1-kbusch@kernel.org>
 <20191202161545.GA7434@lst.de>
 <20191202162256.GA21631@redsun51.ssa.fujisawa.hgst.com>
 <10e6520d-bc8c-94ff-00c4-32a727131b89@intel.com>
 <20191202162905.GA7683@lst.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <6ff6ed7f-44f9-5d03-b4d5-2d38e7d16530@intel.com>
Date: Mon, 2 Dec 2019 09:45:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191202162905.GA7683@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_084535_529361_AA96EDE6 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, stable@vger.kernel.org,
 Ingo Brunberg <ingo_brunberg@web.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 12/2/2019 9:29 AM, Christoph Hellwig wrote:
> On Mon, Dec 02, 2019 at 09:27:14AM -0700, Nadolski, Edmund wrote:
>>> I don't have such a controller, but many apparently do. The regression
>>> was reported here:
>>>
>>> http://lists.infradead.org/pipermail/linux-nvme/2019-December/028223.html
>>>
>>> And of course it's the SMI controller ...
>>
>> Does 5.4 show the exact error code?  Perhaps we should selectively allow 
>> just for that case?
> 
> They'll find other ways to f***ck up.  Looks like at least the controller
> in the bug report also doesn't have an subnqn and the nguid/eui64 are
> bogus.  I wonder if we actually do users a favour by allowing that..

Agreed, tho since it looks like a regression, does it make sense to treat as a 
quirk?

Ed


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
