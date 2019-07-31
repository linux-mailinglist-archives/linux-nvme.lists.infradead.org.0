Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2557CFE9
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 23:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nB96wNlBaLbczaIbHQXWAnt4S0v+MJL41tmUo3R9dYs=; b=W1TUMKqyChSCzQRvCsgV/c4p5
	nL4ed44JuJz+paeZGNZtTko0M/IsG4UQ+rm27OL29uRoGZJWt5yWR9W3ST5k1NT0mVKZbwajv3VxE
	G5RDBWcmBZ4exHi0X3NDghjgxIPesKfT1RTrgcHZmwUO7yTQY3AqSCCOOjfgUX7ExAlcglvHu9lNl
	JPS3Tmr6Opw7cs4XCdIqLhNwrKezamEgaVG3khOAzLUdnQbnOz8/AMORLIK4xp9Zc9/JF4hQxmvg3
	hSu6F563hthyuMKyE8nEvuE5b9IQozzUmcoIleHzegoAd/DTd0mtY4skKQnBJ3da0VfZjp0J58GBO
	zkgXszsBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvvf-00057V-Dc; Wed, 31 Jul 2019 21:14:35 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvvb-000570-2y
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 21:14:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id b7so21559518otl.11
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 14:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1xx2IbjOwaV6Jrhc9k6XyVrF5Z5Ztq5C7UHO5NZiOsw=;
 b=ROdW5RnQ3Y1qd6+vu/ynEvm30Ve7yA2BJ4yhZFwaHrtsx7iKf9iTf1xTA89AjtJK8g
 ioUqZp4xOgnSEIvgbEpp1eWlda0yct4z8F3HqKus0hA3/nKBTAIiVb0q9tBN2zwS09M4
 yZmMWn1pE15A6sSPH8kw9SGHPx7HgpJMorGhenyN2J66wiACwRFbG0Vx01VM0FSZetPb
 Jg7+qygLJwy6mgQ2TzrH7kWeAO7vnRfhi/W6X6sdwIGjX4Ec5NewSSsuXd3q4EFQslzs
 r4q7mXBr2u4rQKvspNhG7DUbCt/pyZfel91jfH5R9n4/Y+IymMc1OvDLYKFjbWreX/ix
 wiow==
X-Gm-Message-State: APjAAAUg3SB9aLEEyHNRW8d00XHO98BYW4VXTzbrX6oWLNTImqu2Rzxk
 fu3Fmcgdt7PbZqIVBuIkZ4I=
X-Google-Smtp-Source: APXvYqx/9+WuoaZCId+7rbl7dYIiXUL4A8hylpAL0reGbBTy8kjKWuR43WeyAQNUBYHNJHiK5CJ4GQ==
X-Received: by 2002:a9d:66c8:: with SMTP id t8mr6176277otm.94.1564607667906;
 Wed, 31 Jul 2019 14:14:27 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id s2sm22792682oif.46.2019.07.31.14.14.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 14:14:27 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
 <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
 <20190731205836.GD15643@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <68358e82-cbd5-6199-1329-89421c778dc0@grimberg.me>
Date: Wed, 31 Jul 2019 14:14:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731205836.GD15643@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_141431_127097_46BFD76A 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> The other way it may fail to revalidate is if its identify has changed
>>> since we last discovered it, so removal is better than data corruption.
>>
>> Well, perhaps we can mark failures resulting from reset with a transport
>> error.
>>
>> For example, nvme_cancel_request is setting:NVME_SC_ABORT_REQ, perhaps
>> we can modify nvme_error_status to set that into BLK_STS_TRANSPORT and
>> check for that as the return code for revalidate_disk?
>>
>> Thoughts?
> 
> Would it be sufficient to let these admin commands requeue? Instead of
> flushing the scan work, we can let it block for IO on a reset, and the
> IO will resume when the reset completes.

Well, I don't think we should do that. Unlike I/O commands, which can
failover to a different path, these admin commands are bound to the
specific controller. In case it takes minutes/hours/days for the
controller to restore normal operation, it will be unpleasant to say
the least to have admin operations get stuck for so long.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
