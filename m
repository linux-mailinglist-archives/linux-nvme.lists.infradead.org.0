Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB0F63D52
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L5cqsl9FILFecnhr9Lwsz8vES2jojfr3pkchziGskh8=; b=U5jlJHVROsFTZWfOjT4gWl689
	Z41rjlTbknkb00hIWWpbCVBWr7MNI3/AsvgHw5g5qfv8pfd+G3aSOE6R+xj7YbYVkS0LmRqB7QNju
	XY7JQf/dbBlSY/05p35cHuTMl9fey/HuEfD/80/Ry5DIYqQI4qBQw+Hd2+46CFpWQdQsNncX5oaaT
	1MJMR1ZiZqEQQSqznytKn4geEyXwOPUgccNuFYbLN4GsxXU7bbZUzcLR/D53bbngI1jrImMoup5D5
	8B5P0o95uAXylFHmQXtVltl2Pny0ALZL6UDKBLTK80lIxD7klMBYjwNdUyN6sD4+WVCSnmW9mjemf
	/RsJLWN1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxfJ-00019j-2z; Tue, 09 Jul 2019 21:28:45 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxf8-00019H-Qz
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:28:36 +0000
Received: by mail-ot1-f66.google.com with SMTP id l15so21429898otn.9
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 14:28:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GAZDVCoi7kkTsBJzXZ2Vo8fVDo4RKq4XToVfxShjtRc=;
 b=ml8RpQXVrtFhpmLLqTN2+siE4wBmVWjB8rar8DldKdQEUBcOTbTakTDVyA7Hnz2yhh
 qeq+v3ASpYxLkRwdYX9Xe8EihlispM8414c9FnN5rD+9kwkQZIAC3MFasJMrxwMR1M4o
 AHAin8TRGMp4NDFJUnUgTv1YCy6ZG/df1PBE55mkZ5iGGVC4PTTYjACInRoTsn5KXKcX
 KGI19wk8V9N6nkRKH6DWMT4Ho/l55p0Qjh0Rm8KSAd3Ro4JcrMtJmD1FLDPB2qxHlYZv
 1wN1KyqC82UCsH+vy33mN7YG086YwuzFeaT/49NrC+LsKwWAOeGj3WUgD7bVsFO9PfVi
 cffw==
X-Gm-Message-State: APjAAAWpDdVEXLUdZgDCFnimcUadRmFGpGUCaWJzPUQhV7dYPkZcluQv
 5GUiXGVgsE/iJRWQofPwh3+EcxCs
X-Google-Smtp-Source: APXvYqxAHmd/+A/8davWp9Q8Q21y9FnJRggM4LZfILMG/y4f0/jEq8nvzBzAe2VDZRvs0+avcRwcJA==
X-Received: by 2002:a05:6830:2148:: with SMTP id
 r8mr6593074otd.179.1562707713704; 
 Tue, 09 Jul 2019 14:28:33 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q82sm40920oif.30.2019.07.09.14.28.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 14:28:32 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
To: Christoph Hellwig <hch@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
 <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
 <20190709212717.GA9636@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e01a88d4-eca1-7e86-1dde-6507f832e83d@grimberg.me>
Date: Tue, 9 Jul 2019 14:28:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709212717.GA9636@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142834_869694_D558FBAE 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Looks good enough to me, especially now that we need to explicitly opt
>>> into polling queues.
>>
>> Cool, so unless we have any objections, lets let it sit in 5.3?
> 
> Well, the 5.3 merge window is over, I'm not sure how happy Jens would
> be about this new feature.

Meant 5.4 :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
