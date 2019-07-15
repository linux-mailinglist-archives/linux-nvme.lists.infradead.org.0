Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FFC69877
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 17:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHzxV206vu6Ts7sSpod5aGSMP7oDdRMaZqbq5EY9Cn4=; b=EdBhZU/e2V7DAD
	LE/l/wyK7WWoPuWIfu9CvvfdMNx5o61qtxCK7OkzufyHiTwTcd+aqRicOxP42h0MHf82zLk4yFvil
	aZydeXdb/qCf5ZsG9OHjDG2FK/9JRkiGisHldYiKd9OfCXr0oiN5mJQtG6CodHfm2Y/54/u1ly43m
	7Z/odSg1Ljn10Jy1Bi7akZZUJeGoQHcNamblBFcbQistEacP61XeM88sj9244CZ7FNn84SLfR7Zz1
	0Ii1QwxqtCfmyyrIgXQnu8+cxcMQDfsikowRnRZq9f13DCV8CgndwUIQwnQ4PcOdqGi6kqIRArWfP
	OucF4JZ3+Ik0AADjYoEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn36f-00015K-PQ; Mon, 15 Jul 2019 15:41:37 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn36X-00014V-4l
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 15:41:30 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hn36T-00067D-8v; Mon, 15 Jul 2019 09:41:26 -0600
To: Johannes Thumshirn <jthumshirn@suse.de>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190712235742.22646-12-logang@deltatee.com> <20190715072148.GC4495@x250>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <91d723da-c1de-ae8b-d1c8-0a3bcee491db@deltatee.com>
Date: Mon, 15 Jul 2019 09:41:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715072148.GC4495@x250>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, tytso@mit.edu, mmoese@suse.de,
 chaitanya.kulkarni@wdc.com, osandov@fb.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, jthumshirn@suse.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH blktests 11/12] common: Use sysfs instead of modinfo for
 _have_module_param()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_084129_224841_37366DC2 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Omar Sandoval <osandov@fb.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-15 1:21 a.m., Johannes Thumshirn wrote:
> On Fri, Jul 12, 2019 at 05:57:41PM -0600, Logan Gunthorpe wrote:
>> Using modinfo fails if the given module is built-in. Instead,
>> just check for the parameter's existence in sysfs.
>>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>  common/rc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/common/rc b/common/rc
>> index 49050c71dabf..d48f73c5bf3d 100644
>> --- a/common/rc
>> +++ b/common/rc
>> @@ -48,7 +48,7 @@ _have_modules() {
>>  }
>>  
>>  _have_module_param() {
>> -	if ! modinfo -F parm -0 "$1" | grep -q -z "^$2:"; then
>> +	if ! [ -e "/sys/module/$1/parameters/$2" ]; then
>>  		SKIP_REASON="$1 module does not have parameter $2"
>>  		return 1
>>  	fi
> 
> But this now fails if the module isn't loaded yet. IMHO we'll need to check if
> "/sys/module/$1" exists and if it does check for
> "/sys/module/$1/parameters/$2", if not try modinfo.
> 
> Does that make sense?

Yup, will fix for v2.

Thanks,

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
