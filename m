Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DF2ABF51
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Btyu/XwFxHwe69RpmiptK5zL1Z8XIi3VgUQQAlxxIds=; b=qSzhdAXYYMQ/n+gCue4HF9oMW
	fNXoCTO1b0oHOtUvOj1XA4zwceIGlSntB5F5SFs0EliTO86emTjgckmbCTN8rZW5b+pSDsgCw2BAc
	ujjF8mVO1Rbz5A9gtyUgoKmiY+6cZXEr5cnUCOOXMU5ncuWXBueqOTM4X0h9YN85TqyQTPoHuwMMX
	W6eIWhTgmObCevDkgH4DAyXwio7OO0JjcXPkdBNIw90FF8efrfN1aa8gc2q6VMgt61UBo1hvwu3KT
	ds40zT6l4iQY/OKH12hsBKPtivMQzZxRp5Prsf/574IDEOPGcZPxBPqdBRIsN1D/WzNQuaiHOAKh/
	8omSMU9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Iui-0005YJ-2Y; Fri, 06 Sep 2019 18:24:52 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Iub-0005Xe-9b
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 18:24:46 +0000
Received: by mail-oi1-f193.google.com with SMTP id x7so5704391oie.13
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 11:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=roLUFRdkVas8gGkywiuk4zGdrYFAnmHTNze64GidaUo=;
 b=qXlyDeMvfqhy//CqxRaWrwLsJDLb8k7eu7f0fNKSEJcP/ou1UCoX3T+ksAI4vxaYys
 GIdJd2Ak3SDUwwbvsk566n03bn1Ub9nAibiYjYSyvQm7tx+OHE8Wh71jaj3dshSr+m6E
 ukkx39xkD7keYIoosw9djsEHRRNFHrHWvBYmPRAt8cNpl8LA6nIC0A3R2YNSds6K87d/
 m7VAf79TB0DRSTJMQHQsy9J4PoHOAA2n5rwSLgQei+jGQQve9ixpGzqQRoEVTh4DAnD4
 HEOP41NpYNcmDydk33N7LdtZSdL9LM8g1ZYcKTOJttoorWdQmw1dfm+844ArR+U3OZnE
 XSVQ==
X-Gm-Message-State: APjAAAVIFazwEXEdToiJhkhK6zTJ7AcByQfM5iW35bWmaZ0+9JTTLaG2
 CUSflWYfPk8anf5EeKw89HDI9vsL
X-Google-Smtp-Source: APXvYqxpm1bC1p1Yiaqad3NvGFS+m+RWQsFCjsVuZIg/5uxynLKPjGDRhuXDR4uXOSFB6Sz46ZBwFw==
X-Received: by 2002:aca:cc0b:: with SMTP id c11mr7951111oig.169.1567794282454; 
 Fri, 06 Sep 2019 11:24:42 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j3sm2133733oih.52.2019.09.06.11.24.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:24:41 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme: remove PI values definition from NVMe subsystem
To: Christoph Hellwig <hch@lst.de>
References: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
 <1567701836-29725-3-git-send-email-maxg@mellanox.com>
 <882441fc-599a-21fb-9030-5208b3b671cc@grimberg.me>
 <20190906052334.GA1382@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6d28d72e-6afd-d6d8-5c8b-831587c44557@grimberg.me>
Date: Fri, 6 Sep 2019 11:24:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906052334.GA1382@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_112445_341742_4DB01DCE 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, martin.petersen@oracle.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, keith.busch@intel.com,
 shlomin@mellanox.com, Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> The nvme_setup_rw is fine, but nvme_init_integrity gets values from
>> the controller id structure so I think it will be better to stick with
>> the enums that are referenced in the spec (even if they happen to match
>> the block layer values).
> 
> These values aren't really block layer values, but from the SCSI spec,
> which NVMe references.  So I think this is fine, but if it is a little
> confusion we'll have to add a comment.

Yes, at least for patch #2 where we set the disk->protection_type we
need to explain that the dps match t10 in the type definitions.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
