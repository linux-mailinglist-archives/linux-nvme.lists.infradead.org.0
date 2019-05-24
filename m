Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B592A19E
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 01:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7T/f0G2elEVusoRfAyKehxep/TxIUIqW+qH8FwG2IDA=; b=XjaRW5flMGcbGegpl/XUfaBN8
	SsMfei3FVix3Yo5gWBByr9htXQlyar+zOaVM3NjDkFnlk8SnE8j9V4NS2lQvz7IzuY96zbZdicIUJ
	fj4Q8tOCtg6ob+1n4qHrsJ0fLF2x/mqx9hbZNcnOmxu32xTAeFDAytzh7g88r34t5LS+lATabhsiH
	43fLP/e/4JCcYwxXmFrXYK90/79P90iFXD4+zAi6D9SalDuXKVG+FxBZ4k0wQL9ji/7fqDgT0MGHc
	tzjFJAKpeoVqPW9vJwQ0YrcS5sqWTpEdTOCyXP40Vv5bJHvnY+w6HbB6Hd8qPRTVWc4d28fWYgEIM
	fthI/FfKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUJXO-0007HC-PC; Fri, 24 May 2019 23:23:46 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUJXJ-0007Go-GV
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 23:23:42 +0000
Received: by mail-pf1-f193.google.com with SMTP id z28so6175834pfk.0
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 16:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=13xioew+bvEOnU2Bsnh0YfuvADrnITYWS/6uIjqK7/A=;
 b=f31C5o1KbLBTFC3TZ34lAoRr68md6a4jT58lSXowlUNjbJ9R8c2HKSqZXuMv3zshAb
 R51J5pl4sBXerVnRwl1xmcb8tuLZjCryKfu3DySJNWVXM8RjeilGCo3cJkOYsriRR4Jl
 LhygPhYcHzHrFWxniJASo9x2vnbRWOFyoghIbFrECNO9cmlnTtoneTMQck4A+3KF9U17
 2ZIFXQ9Z2vr9WznsskdNpEr3fOlQpiIxD5QFgmPH7sKdlsLUQJOt3MjPOnvV/sQPhtNd
 vpLAO9YHLf2euO49tAOWJ9HyxB8qF8N15GUnVI0UMmZvW3b9TyEYO1qM0CTK/+5cha1Q
 zAKA==
X-Gm-Message-State: APjAAAUAOv4lc81RtIVTEhsM7YBoPs1rnP924KkbWn0uHsrlB2wToMcx
 jeFaj8i/qXqnpACzvzbNdVw=
X-Google-Smtp-Source: APXvYqxwNgJG5QjflX+Y0zNNc7HDm29169pqCOal4mpwAoJbl5eXq6zeSCNfD4k9VGtQmoSIm8QDIA==
X-Received: by 2002:a63:dc15:: with SMTP id s21mr18724152pgg.215.1558740219773; 
 Fri, 24 May 2019 16:23:39 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id t5sm1020640pgh.46.2019.05.24.16.23.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 16:23:39 -0700 (PDT)
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Max Gurtovoy <maxg@mellanox.com>, Keith Busch <kbusch@kernel.org>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain> <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
 <20190524140753.GC15192@localhost.localdomain>
 <fe7bd12e-99ac-e038-f096-7697186051d7@grimberg.me>
 <ae685e0e-8ae2-dca3-844f-fd3147847447@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1825f9cf-fa66-4232-12f9-3e27c73a7395@grimberg.me>
Date: Fri, 24 May 2019 16:23:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ae685e0e-8ae2-dca3-844f-fd3147847447@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_162341_551485_0CB3C871 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Sagi,
> 
> my original patch showed the namespaces and not the mpath device since I 
> developed it in non mpath environment.
> 
> Afterwards, Keith asked me to test it on mpath env and I changed my V1 
> to show the mpath device (in case of mpath configuration) and "IO-ble" 
> block device in case of non mpath configuration.
> 
> I thought that this was Keith intention but afterwards we agreed to 
> print the "IO-ble" namespace in all the cases (Also Christoph agreed on 
> that).

What's IO-ble?

> So I'll update the patchset to show always the "IO-ble" namespace and 
> not mpath slaves that a user can't do anything interested with them.

But a namespace in a multipath environment is not associated with a
controller. I don;t understand how you can display that without
confusing the user even more.

Unless they are not nested under controllers but under subsystems, that
is fine, and aligned with the spec.

>> Maybe for starters, when passing a namespace handle to list-subsys, the
>> output should display only the slave devices from each controller.
> 
> I see "nvme list-subsys" as "nvme list" (without any params passed). I 
> don't see why one will pass namespace handle to it.

Because the user wants to be able to associate controller(s) with
namespaces (which is exactly what keith listed in the change log!).

That user could have simply run: 'nvme list-subsys /dev/nvme0n1' and it
would immediately be able to associate the controller to format.

Overall, I don't understand what this display is buying us.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
