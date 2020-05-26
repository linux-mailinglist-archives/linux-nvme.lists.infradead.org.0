Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC071DACE4
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 10:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KMXfevSKqA7SWDqVyyeorTRYv8wSSfougE2E8vvLY8I=; b=sMD5Cmhd+rgY3nDwSetiUGvyK
	2HZ6M6kmZdUvXyRpM66Pg5ho0ir5mjwFxqVDe35wHhVPRGPAVks7If6nLyxLSGG1G1CHRmKZLLIxd
	KjkPKisZFrcfpf9CUifhDyMJeE5TkpNEyTN8uEYLwGr7zH0byQu6ZaXnRVXEkQF1tDE/VplamZ/Eo
	Z0RtKgT1uDyd6nFOup2H5i4O+CQ20AmMOQSFq3hXPfqXkLkf7QZybGLx2QuoX1/Zmi+6EP4ZB22K3
	s8n5HDS7gmXFo+H0elsI2j9kz06HZSC+5ri5oAeB7Nl+SheSMRODA5++N2uobbpgW2Dk0Ox0YBhX8
	uTwmpTaDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJkZ-0002Rc-4E; Wed, 20 May 2020 08:06:51 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJkL-0002I3-Ij
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 08:06:39 +0000
Received: by mail-wm1-f67.google.com with SMTP id u188so1883514wmu.1
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 01:06:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UYczGkrU8qIFS8zIT+96or/mv0Swh6C9kDojWHLPtaE=;
 b=sOR/iNuWius+c8YMfke+8lRjjXG2ykUO0rD9HXD5ktFBV6T8NicSlunJlDXUhvVAs4
 Yaz0mw66ZsKAUH6EUxOhoJqAZjwraYalIQ7RQR/nrcLYiIgGESBU2CyS03cvnGdFUL7t
 tBuLKb4NBkPRaWok3GtaCt/5ryLZzNtNTmbWcb1+PHEfP5OZnme6CR0Q8lyXJ+T/whJb
 j8GH2C8jcq0nCjrFZGr4AkvyL+ST2Z/blLB98VAzJUymrDyhdUykggH3ECMqDLXyb1Kg
 FsP6Kedz7do4oTLgXksVa+K4e/KQjhZSXxRHr+UN+SwzYDeMjfLA9wQynBTUImR948ZR
 WMrQ==
X-Gm-Message-State: AOAM533SnU800JieQqUtHm5nyUVbZ9LArl3juW4K6HChqmCxJh7U3xyB
 oqWxyUywCIYHvk3aXU9nbUU=
X-Google-Smtp-Source: ABdhPJzfPcKakwiqe47gmB+2bBW0xWZsxuWAbL6TcFqzdLZBhEIO/FV3fdkLMEExBw15nUJS4ZVCmA==
X-Received: by 2002:a1c:108:: with SMTP id 8mr3431844wmb.148.1589961995345;
 Wed, 20 May 2020 01:06:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:91e2:91f6:e321:5d4d?
 ([2601:647:4802:9070:91e2:91f6:e321:5d4d])
 by smtp.gmail.com with ESMTPSA id l18sm2200354wmj.22.2020.05.20.01.06.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 01:06:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining aens
 in nvmet_async_events_free
To: Christoph Hellwig <hch@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
 <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
 <20200520071526.GA7008@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c0379f95-246a-3fd6-9ec9-4ee814562c8d@grimberg.me>
Date: Wed, 20 May 2020 01:06:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520071526.GA7008@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_010637_642528_07EA4912 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: chaitanya.kulkarni@wdc.com, David Milburn <dmilburn@redhat.com>,
 dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> :) I guess the pandemic got to me...
>>
>> Things make a lot more sense now. But don't we need to move the aens
>> free to after we remove the controller from the subsys->ctrls?
> 
> Yes.  I also think we can clean up a few things here.  How about I apply
> the series from David now and send a few additional fixups on top?

Sounds good

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
