Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63911DAB39
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 09:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rOcObKDrWzr/kIPm3pDlysXjNys+kg0pHwDR5SjeTKk=; b=ZQO17wIlAFtjzPQBzWtd5q4gT
	zf0u+JPmylJdJrKWTtpegnUT6J+2YTauWDyhqVOE7xFEEHejttz/AbM4gJjOURBjxIgMPBGv3LzI+
	S5gqC7AZrhodsgqv9GLZAddvPgpWZjEMbIUA9iOAEm7PjRlILY4+Xn0YHmueEjtFAp5HhWrkGltvP
	NDpZbx3M0IEJI7Z3W7hZh6Q7Yz3Yfg8qEkELDAFeEjsV1ZdoqS8zy73+SMcrgvI+5kfmjWm9MhOoT
	6rov2Y/Q9/i0KPJWWYxGAmapb8Yj7GP9SPXHhioZQx80XK89tqVXfytFnISIOkgxmd11silwjKr0Z
	X6v0atQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIjS-0006lR-I5; Wed, 20 May 2020 07:01:38 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIjH-0006jd-Gx
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 07:01:28 +0000
Received: by mail-wr1-f67.google.com with SMTP id l18so1968716wrn.6
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 00:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y1xB6CazoEpeg4ERVKJ5rVbMVzrd7xdy6NVmMXakcxM=;
 b=hMNHLpEfE9RcdTUyjMp3jAm3FT4TSeBTsLQvpDxBqe/U5HZTRKL2i+s6Do99cSEh5H
 MfUD6kFifrtVNGGj+YWQi95h6/iFfnyIHhht19rQsAnZWVWFsW/nOREBYQ8Gm4IUzY0V
 k0tSvz9XgF7lXhT6zRj7ij7OvIsXMPmZd+DZu9nW2S1egQTx8/dFG1dvcF17+6A1Ib6c
 1/FuPB9MV2vY+hVQF0TxA0QwiHRETuQcNJOq/301Cf4UXJNcv5I7WAYkv40lPTPJD64O
 eV0krNB21s8yQwYh+giBbKSeb2MCQNi11PFwZEqsz7p5FAC+waNiqahOjnGETgfQsMsD
 P3OA==
X-Gm-Message-State: AOAM532m3BMMJgxM9YOQgmJefHhtFsjgOFW8C78BVg5YxVs4FJ2IGA2V
 TGbuJ/pqL3Yw8gPr9sEDWyo=
X-Google-Smtp-Source: ABdhPJwKbFJszCaD5brrDp9ch9Nk5sTCDO+F6AYRXOLZnGdGcdC/PRt3i3HtGL2F07IqXAgyF50kGg==
X-Received: by 2002:adf:e404:: with SMTP id g4mr2674692wrm.418.1589958086003; 
 Wed, 20 May 2020 00:01:26 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:91e2:91f6:e321:5d4d?
 ([2601:647:4802:9070:91e2:91f6:e321:5d4d])
 by smtp.gmail.com with ESMTPSA id x5sm1971538wro.12.2020.05.20.00.01.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 00:01:25 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining aens
 in nvmet_async_events_free
To: Christoph Hellwig <hch@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <ced87004-a580-853f-2a27-e3acb789637e@redhat.com>
 <a47fb849-df48-1d7e-d34a-269257487393@grimberg.me>
 <37746101-6300-4364-079d-c6850d2d55d5@grimberg.me>
 <20200520061843.GB18308@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <dd19cd40-b36b-7b04-e35d-e096b745a129@grimberg.me>
Date: Wed, 20 May 2020 00:01:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520061843.GB18308@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_000127_559823_317879CC 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: David Milburn <dmilburn@redhat.com>, dwagner@suse.de,
 chaitanya.kulkarni@wdc.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Umm, and this section needs to be removed now of course...
>>
>> The loop here needs to be:
>> --
>>          mutex_lock(&ctrl->lock);
>>          while (ctrl->nr_async_event_cmds) {
>>                  aen = list_first_entry(&ctrl->async_events,
>>                                  struct nvmet_async_event, entry);
>>                  list_del(&aen->entry);
>>                  kfree(aen);
>>                  req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
>>          }
>>          mutex_unlock(&ctrl->lock);
>> --
> 
> ->nr_async_event_cmds has nothing to do with the number of entries on
> ->async_events

You're right, oversight.

We can just do list_for_each_safe... Moving this to the final release,
we shouldn't worry about commands, the transport will free these
resources.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
