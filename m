Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88F81901DC
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 00:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A0/8b+yHKb6qAIM+kTWXgCkaaod2KQq1eis8rRNv+ZU=; b=DjHQ2ufFjQE+KD/g5SfFNnSzS
	vYPhblSF+8HqO8FhPfib2sUzBdsaSMFl0xdjMGgx/FV6YUQXoZ4gEnSLPpUcdHSC8OJYtQB5SDcM6
	tnWt4EStTaP6WJFnI+FJUtjkoy+s2Phftk1kx+RuOJwCEk7zpPg7+yL3l5y+K7h+TtuDwHwmoGURi
	MaN9JFMVAGljiB1isQ3NdVCcUwuLid8QsbyZD0PEpN0dgu9rcuu1BA9TjS96E3H2hV7WYEkftY6+E
	zgqRx6/2OmKk+30LHxX226sJRyuEnQUCrGB7a5B6CN0ssRqjfqEUNco7mrwjJuSkYm16Iu8489Igd
	WH06ykqYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWVY-0003yM-Ul; Mon, 23 Mar 2020 23:29:24 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWVO-0003vi-Nk
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 23:29:16 +0000
Received: by mail-wr1-f67.google.com with SMTP id d5so6972834wrn.2
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 16:29:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0hLk8hPWTuVaQUXcxfU/RBURZ9+xlNkxcoQFf1hVTAg=;
 b=peKzj8zPOi6roo/l9kyuDkPWDWED8lz3tPa6g1mNTLgmyyoit8kDAmy8sgGSWVrK6r
 vhVN6ho6CN/wEiM86VrZmYhVZxYaCHyB8wSsovNgGYm65vm9J5GvZPRTqRQynadRbKPe
 2jD5OCfHeDnW2aKrFKgy/NhGAK3Bm4n8mMyAVmTOUmO3cDKEmKAfzRBlINM1vUvH2tVC
 mInW7J3UvcyUoaTMV2dO62Hk8ReXo3U3Dh+2KzCSqIZ81RWxqFOb+smWKRgP633Tp9n5
 TojTB2UYmDv8diy8hd+cCG5H78JFceSJrfUfks0SB3Mxz8s24V509KycNi8AUNQrx9yA
 M5tw==
X-Gm-Message-State: ANhLgQ3O5CLDU/IiirEytlgf+jWE0v5w0dcH+5NGRv/ZgP725mAGlBXO
 ASeD42jOrB5lAMGo6S7qamRTiEkB
X-Google-Smtp-Source: ADFU+vsbOU1iXA3gc+3k4o+ag/N/sxsobZc4FxTEw+mliMMrP84zg9dD0E7LIobaw8D8OULGcz6/pw==
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr33484250wrb.90.1585006153218; 
 Mon, 23 Mar 2020 16:29:13 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id w204sm1712307wma.1.2020.03.23.16.29.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 16:29:12 -0700 (PDT)
Subject: Re: Sighting: Kernel fault with large write (512k) and io_uring
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <MW3PR11MB4684AEE8587BFCC0A9F41DE4E5F70@MW3PR11MB4684.namprd11.prod.outlook.com>
 <4eaa3e21-833d-f6ec-3b14-58dd2022a381@grimberg.me>
 <MW3PR11MB4684AC746EE60B9E5D0D46E1E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
 <82255be7-fb89-c66c-442e-6fe04239768c@grimberg.me>
 <52ce2f94-e11b-c537-63d2-e9b72cf1b00c@grimberg.me>
 <MW3PR11MB46844ED6C11993D7F5D911A8E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
 <092f6922-ab29-c2bc-04b8-0d0c95c14ad6@grimberg.me>
 <MW3PR11MB4684FD29002D6D1FE29A4A0FE5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2f68591c-d2f1-f632-644c-11de97511a45@grimberg.me>
Date: Mon, 23 Mar 2020 16:29:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MW3PR11MB4684FD29002D6D1FE29A4A0FE5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_162914_781943_90CA17A7 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jens Axboe <axboe@kernel.dk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 3/23/20 4:16 PM, Wunderlich, Mark wrote:
> 
> i> OK, this is a needed fix then.
> 
> Yes, so far this removed the kernel fault seen for large write (512k) + queue depth 32 + batch size 8.
> 
>> Yes, this is with nvme-5.7 tree right? which is currently based of
>> 5.6.0-rc4 correct?
> 
> No, was not yet able to get branch 5.7 to build with our driver.  For now am running on branch nvme-5.6-rc6, the other branch mentioned by Jens to try.  This appears to be based on 5.6.0-rc3 I believe.  Will re-test on 5.7 once I can get it ready.

OK, but this is with nvme-5.6-rc6 as is right? no add-ons correct?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
