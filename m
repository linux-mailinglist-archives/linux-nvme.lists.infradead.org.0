Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9268C79DDD
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOVEL+BEILV4UN2Qk5/p9h2jL3IuqNEcUiYGwHS37rE=; b=JoynuSYwBcBYdK0mCHBxs10nW
	FzUfWMjtaP+cPQd+j9613T7h1m8R3+B3oUswOscSEjaa4oIvVcoATiG6k7uOs54cWqZEYCNAgMnGj
	KJIu6oDUaRQ1ZxloP4PEzArdvfJKWYupjl3QMu9d50i4P74c+/rBPIqNy5NEIMzuqgl1PupJ9MdT9
	fJhb5o8UcAkgmGiah3Ufi1OKfm3CV/VeW8Y+pk0xeMftKXg3yBGsgVjMN755BQ1Tb30tqUGrWXjYv
	QSfnweS25uaInt/MH+kwh0DSdZfiT2XYUpJ/zfSHqizdTFqUZEfCXL3HZjVYo2WdnZW8uOnHKJGex
	uOWVdOKnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGni-0005Jz-MU; Tue, 30 Jul 2019 01:19:38 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGnZ-0005Je-SU
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:19:32 +0000
Received: by mail-wm1-f65.google.com with SMTP id s3so55452944wms.2
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:19:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LE5zBGwbq3sBWJQTeLq9Iyep9zJb/A5NIivD3TzCLaM=;
 b=JZqDCS3KWmqp5zpZ5kjrzmHBnPgtz9s264Oggxn01D+L6ptg0yOFyUjujlpm/u19lD
 LHutxVkjKskIeuT9pxxXI4/GbCnstI23xnhXaEi/tQWUeyJHcveYYcFOC7nEpgOoqGsd
 NfpHf3gCfVaGGKDBjGSsWP175DcZra7ZLiveOeq03lq7ikHutGddARg1AK8vxFfd4yH7
 gHMZZ6Hna8OcslkriAckV1M8Oj/QO6p6XVMDHwtya3jgN04SWgwBKpf5bsF7DiXh1xzQ
 jkD/zKkg/Jsa82quuHe9ikVr3O6a0QudU3sEzeNqqJ1jQXNPdd5GNIME97ne6fdokkGC
 VOcQ==
X-Gm-Message-State: APjAAAV6y6V15OEv8zy6U631KNLlxW7E2M9Ve0xhQ+p6oUvSKBMq92C2
 8W9QpGBdCYlAR0WgsKwVtE8=
X-Google-Smtp-Source: APXvYqx0GgWwzwJtTl9EBJAI4AQ61OOobITY1F/Wc6GTXGtQraL2KDSMxodoJFtcERdPDn5AdfhGTQ==
X-Received: by 2002:a7b:c776:: with SMTP id x22mr28419188wmk.55.1564449566263; 
 Mon, 29 Jul 2019 18:19:26 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id f2sm58920075wrq.48.2019.07.29.18.19.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 18:19:25 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
Date: Mon, 29 Jul 2019 18:19:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_181931_162013_5C89D4ED 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> If a controller reset is racing with a namespace revalidation, the
>>>> revalidation I/O will surely fail, but we should not remove the
>>>
>>> No, there is sync IO request in revalidation, and the sync IO can't be completed
>>> during resetting.
>>
>> Why? of course it can. The controller reset is responsible to
>> quiesce + abort + unquiesce both I/O and admin commands.
> 
> Abort simply cancels the in-flight requests, which will be retried &
> re-queued into
> blk-mq queues, and will be dispatched again after reset is done. That is why the
> revalidation IO won't be failed.

These I/Os are admin which will not be retried (because we mark it with
REQ_FAILFAST_DRIVER). As for normal I/O that meant to be retried, it
still must either failfast or failover to another path.

(see the patch I sent Logan for an issue in this area:
[PATCH v3] nvme: fix controller removal race with scan work)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
