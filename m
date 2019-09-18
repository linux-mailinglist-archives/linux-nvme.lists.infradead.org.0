Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA6B595C
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 03:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1n5DTwYk+ao8aL58R3I3djwFEs4qSOwFWxoiQpNSMyU=; b=AaMnNH+G59AZrOP67RNMs+a2v
	z8LGeBliOsh9sSRDUIRCCIndluVU5tBagWUfeoipvLYtUaW42DbFjf0/IbYBM4HuVsyMoAL7e+fDn
	3+uVsOFRyHmkFp1NHQKYyjyRT9ceIxFGKn4Y1f9HrybecvU2HP0raJbCFbQPFg4/qNt8vXflbMdQr
	yKZTs2Rjyb57woVZ9Qljm3p4iKiZedbOdTfM1Y9xDg8ZvnXOIXHG56a4nS90EiCU4VH89gX0DxHOD
	Oj6w7gXh+HkanqcZyR/fY5dJ7xqLJQRvWiOs29J9+7L+Cd1pB5RjkujnsyNvOznD4e/oXoxtldQxS
	FL9n3K3Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAOxL-0003mT-9n; Wed, 18 Sep 2019 01:40:31 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAOxF-0003m5-0Q
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 01:40:26 +0000
Received: by mail-wm1-f66.google.com with SMTP id 7so553729wme.1
 for <linux-nvme@lists.infradead.org>; Tue, 17 Sep 2019 18:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HOQr1tyICv6ScHdNB3eUK7m9Abxpn3xjMDmVI1+wEhM=;
 b=eLmKL/Ysa7wpXtzNwyidFcs3PZVZhkNtwU9KOyp4+rbMlWxLKYSbshLuUkbQxEVEhr
 U6hu5OeJp+TvCqmKcx0iUHlb0gB5cW24DlnivcmhSWwy6b3EhXVrZttDVdmVkjsJHFor
 wQbH2rGMqa3t2Tl6MQxwToLDGtg/EPZYWtk2iEivK3fUhgKE3AbdbGWINxKhcjc1CXqi
 5/6+xh0FXlkmDWK/hm1B+8g+UV0YaaxcU4VEgpJOyb4iO/ssLlr2YIhw6Tr/ugDbQ5iN
 N6fzuTDdFI8ZTzLxYXCsNA+nnxYoDDQMvKKpnXXEnxze/auFgnzSCNZzhsclmXnLLW8K
 Wpeg==
X-Gm-Message-State: APjAAAV9hu0qXhHQJTFjJNBKaskO/1eevTqnygnv4CkWZgDVGVxErqwf
 6qs33c5fc+RqHN7MiocNn8OWuG1+
X-Google-Smtp-Source: APXvYqymR3RKZOS2gSbUj2Fsch6z8GsYjIKMo6EbCVMT/5TnZxmOI1SKHjNRDf5hwEj5py1fHPNcfw==
X-Received: by 2002:a1c:a8d8:: with SMTP id r207mr577909wme.135.1568770820596; 
 Tue, 17 Sep 2019 18:40:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id d9sm5691649wrf.62.2019.09.17.18.40.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 18:40:20 -0700 (PDT)
Subject: Re: [PATCH] nvme/host/tcp.c: fix use of time_after()
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D339CC@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8881fa6b-0825-4f4d-4713-eee3062f1cea@grimberg.me>
Date: Tue, 17 Sep 2019 18:40:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D339CC@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_184025_053432_675FF5BB 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks Mark for catching this!
> nvme/host/tcp.c: fix use of time_after()

title should be:
nvme-tcp: fix wrong stop condition in io_work

> From: Mark Wunderlich <mark.wunderlich@intel.com>

This should not appear in the patch message, are you using git-send-email?

> The values provided to time_after() call used to terminate
> do/while loop were reversed, causing loop to always exit
> after single pass.

They are not reversed, but rather in the right order, the problem
is that the do/while statement needs to continue as long as the
time *DID NOT* expire.

So the right fix is:
 > -	} while (time_after(jiffies, start)); /* quota is exhausted */
 > +	} while (!time_after(jiffies, start)); /* quota is exhausted */

Please also update the patch description accordingly.

I'm inclined to get this to jens asap and also send it to stable as well.

I'll be waiting for you to respin.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
