Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B413C046
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 02:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ow23Gz1Xh6xSB8aseLOaYrSmsW+iOSs9E3Q/FqLjToI=; b=qcwobjDfSkqmFQBDKIEtbQ56q
	lqrutdOyGxvWQm+2qMY3GpxSHG2Z4GjTyscDwWfhikKQAYig/UO51GX4p/k6+cTh3g08X/vKC/9FG
	L0Iv3RRhZnFCcQtF8Dgs+pckik0qHLjC/fQl9XQN6GXcZbHw7Qcfr5O0cHBfsY4niOzNF+rt71Fau
	MV1T/BJglMAQHfrrNQNg1CRV1HwVFz2VYf94aXKp+Sh8BdV+QCXmkiQurzhKOY7Uotwn5AIE2tewo
	kCGa7+2PjTpvZ2xvOhjR+8bYSJfIAr6BQr94kwoXqwDKZMRcuHp/6Zz8P/F+cLQF4E88Uecsx2Ky8
	lLjsoTYEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUEs-0006SF-Gm; Tue, 11 Jun 2019 00:02:10 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUEj-0006Rg-BH
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 00:02:02 +0000
Received: by mail-ot1-f68.google.com with SMTP id r6so5811235oti.3
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 17:01:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+YbN+MSLHSVU0/jbX8HwQZ68IfdGzQZN2Yx9qeaQUSQ=;
 b=dPnGhKAf8kfgmnyfAOg6hk6hEJ1Pa54ikIweyXpgtoVljmQaaN9O9g2atwY+xAL156
 jCZCSgCAjDTkxiMWpegcGzMGkk169FMMbcvGqajbA9AZza2KRz67bjLPqMk2t0fbxAGc
 Kai7XZJv7mX3hJ670VjWGc6bC3TYgiPXMDMe/swxXJ+qkx69l/fcOdVOFg8GXTv2ec++
 ZtwTyp6mj6o55tyeo9zWdqpH0kgZs0sVc22QPdICPmgb8nockTfynBEeKqLFTRnBiAiq
 jOOLTBHFqCxfoI6vj6Rn74kn6MljVgtMR1DvJyjQOwOMuSi337kNlRtv+B53ZdyknDwr
 9jRg==
X-Gm-Message-State: APjAAAVl+cR/5udIF79uc3RjvzCs1kWp5BbL5P61uGTaUUWKOlcZW3lH
 pYXvZcbg/LXFMVu1wb3CB688Nk+u
X-Google-Smtp-Source: APXvYqzPcDXG5oZJOOGy7g96hVJv0c3bXhdGUmLFJm3LWc3tx0JwpueeTzz18ePcXtWU4hre2T7+uQ==
X-Received: by 2002:a9d:7601:: with SMTP id k1mr4165664otl.254.1560211317884; 
 Mon, 10 Jun 2019 17:01:57 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s1sm2814343otq.28.2019.06.10.17.01.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 17:01:57 -0700 (PDT)
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
To: Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
Date: Mon, 10 Jun 2019 17:01:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608200112.GC28228@minwoo-900X5N>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_170201_392206_14B9F952 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> On 19-06-08 19:36:42, Chaitanya Kulkarni wrote:
>>> @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
>>>    	case DISC_GET_NUMRECS:
>>>    		fprintf(stderr,
>>>    			"Get number of discovery log entries failed.\n");
>>> +		ret = status;
>>>    		break;
>>>    	case DISC_GET_LOG:
>>>    		fprintf(stderr, "Get discovery log entries failed.\n");
>>> +		ret = status;
>>>    		break;
>>>    	case DISC_NO_LOG:
>>>    		fprintf(stdout, "No discovery log entries to fetch.\n");
>>> @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
>>>    	case DISC_NOT_EQUAL:
>>>    		fprintf(stderr,
>>>    		"Numrec values of last two get discovery log page not equal\n");
>>> +		ret = DISC_OK;
>> Can you please explain above assignment ?
> 
> Even it fails due to a mismatch between numrec in the header and the
> actual nr_entries, the discovery log-page has been done successfully
> whose status code should be in zero.
> 
> That code is just returning 0 to the caller which does not need to fail
> due to this reason.  You may ask me why I didn't do like:
> 	ret = 0;
> 
> That is just following the code right above which is a case for
> DISC_NO_LOG.
> 
> What do you think about it ?

Shouldn't we start over in this case?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
