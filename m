Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6EF115964
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 23:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J+AEuavy5aDz2X23mVoY8AZeMO0ty6E8PKM+YbLE8NM=; b=YMufZS7OGLL/4XG0ITsi0Bu3H
	SjfYkU2TNe/XITrbdPTANlSZPYLaeOludxX4gAmZnwF0b9mJNJeCt7BZW388df3GcNB4IiAJmYjxF
	W/OfL+3E+w2shj97Cdx3MckGjAv35PLm24x1D9mk8tz09GomUzBY7LUyC41ak/WDUN/q9jRFMqURC
	KB8wYXWaOgcVnvEj1LYHkzifHYau7n8aG23ihJ71lsOci+AlpzY19P8T3RKA4Bqdi1V8xJlGK0Ubc
	BdA8wN14P0K8v/qTt25DEreN+VQxZVFaJN2utSwiY3eEuTrLBxsXa7Nkb+PJr0mmpsAy/6H84x5B3
	QfhL2KBvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idMKt-0003hV-CV; Fri, 06 Dec 2019 22:44:31 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idMKp-0003hC-4e
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 22:44:28 +0000
Received: by mail-ot1-f66.google.com with SMTP id 77so7216677oty.6
 for <linux-nvme@lists.infradead.org>; Fri, 06 Dec 2019 14:44:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HRwJsVUQLdSHsQ1m2vwNk+Kn6hCWFy0AnZxYJgzDPNA=;
 b=iAfHcBQ47BqvdLQ5t9z8FxdoWY0a7zu21+dqPUDWABUvqwrpdsNgtS3ui+4jJiQ8Il
 YNahQ7rAlPdpDGnZnHlFUoRbaK755fee6kXms/acQo5G+MdqY5iMPOOPydymcID0HL3s
 O3GONBjMO+4zp8rpzWa1QaURQOAivUnSanJ2Z++HE3MbtfPk2IxiN9nYcLryW0wa1H6S
 zPrv8pwubKVYpvRN3vGuIuW9HePRWTgtyyi2OL9NtbP3XcrGMT0stDlYjkE+tIWsEKBj
 qVMIlJvUpBdFR39wkGUdKCzHywG0eX7ogDU0MVWsKab2fPc7Evl2O2LrhpYLIXaocQfa
 tQQg==
X-Gm-Message-State: APjAAAXprlQSM9YEnPv05X2KTtF89r811XYd1ts3EhmyNrcBxO5rVcXp
 UcI7I4lP3/McoU/o5DfrlUVFTJe+
X-Google-Smtp-Source: APXvYqwX/qIXbvzrV7ZBsxExx7ahchiRXmGKQEWGOcQtPNX6+gknu0MU7dV+Fd7Sl3GYPkDyAAsIcw==
X-Received: by 2002:a9d:53cb:: with SMTP id i11mr13424152oth.158.1575672265505; 
 Fri, 06 Dec 2019 14:44:25 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id f62sm5149928otf.23.2019.12.06.14.44.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Dec 2019 14:44:24 -0800 (PST)
Subject: Re: Regression: kernel 5.4 does not show NVME SSD
To: Keith Busch <kbusch@kernel.org>, Ingo Brunberg <ingo_brunberg@web.de>
References: <m3fti36pll.fsf@web.de>
 <20191202153925.GA8561@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2df2848e-aff6-98b7-4042-0935afb78e72@grimberg.me>
Date: Fri, 6 Dec 2019 14:44:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202153925.GA8561@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_144427_180212_A05D7E06 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hi experts,
>>
>> starting with linux kernel 5.4 my NVME SSD from HP is no longer detected
>> correctly, nvme list shows no result. I made no relevant changes
>> regarding .config between kernels 5.3 and 5.4.
>>
>> Please have a look at this bugzilla entry:
>> https://bugzilla.kernel.org/show_bug.cgi?id=205679
>>
>> Maybe all SSDs with a Silicon Motion 2263 controller are affected.
>> If you need more information, please ask.
> 
> It's a regression from commit 538af88ea7d9de241e6b6f006e9049c4d96723bb.
> This one should have only returned the error if < 0, otherwise we can
> proceed. Will get post a patch shortly with a 5.4 stable request.

Should we have something that is more granular rather than any positive
error?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
