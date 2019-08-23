Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E7C9A75F
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 08:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q/TuOFsArqYroZgFkLwUkHIpYYA80nPuokgKPOOYQoo=; b=DY9crJyyeR/tcdag87x0hhk9r
	qORW6aPZq+mFbTiIT3MR2XVLE7kil60lxq2vGFhLjCyJCDOX3lepEI+30i5zPuXPJIvniF4FC96EX
	Gn6jU3/P2AZaAkiecxrpeD64ryH0dqA7oQ3H8eyZI7HErURMTDs4SceSN9GfQ/P7BvP7+G+ky9wVZ
	DEiTkJ6j1rm3NhrIywtYuNS7Dr9LsSkcVQCQvQazyA6s93LBNCRqKXoQdyHafj85XLCvb2O05aC6m
	zBiFxAGeLZ/+rrP4dtPcnQyuCyiDZEoxtgu6AkHGjQzZa60XE650hxm4XqOv4WWcQ6VGteA8g/u84
	DvnBF70ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i12iJ-0002rx-07; Fri, 23 Aug 2019 06:06:19 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i12iA-0002rJ-3l
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 06:06:11 +0000
Received: by mail-pf1-f196.google.com with SMTP id w16so5733297pfn.7
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 23:06:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TW4qhu+U0J3cR1SVVa/nJ8JaN4n8foLYzA4PiTn5Zl8=;
 b=t5hEJsQTYlvyQEyB4vkFCFLToRpMpWkRsW2IQ1hUy3mXsYNcF+zHgsSRZa1y98F499
 J+4ABXlaQ76fuKVZfSjLbHoY08uhd5tsT2HCeuHjcALm/pYcOOITuwox1KDCntAJe6SM
 2XomZA2kbXDdStvQOgwODhOKat+aB/NZePRPRCrA+rlH6DOpGun/anoYjt/i31fH+w4y
 MSHIRkD6yx0X5Ubb8yWr9Z1lL1WL7KDQewDyDqgvHl9x1YhThmjJHxeWNJMYhSlExzkC
 xUNF8GRDo/gAe5aEc6+br4lM83WuouucuJRNm+KVrZNK5j+o4fcWOO3ee5seDmJaeJC4
 6roQ==
X-Gm-Message-State: APjAAAV80kRk1zaWiTgr1CLUfzj0OHxuSK99sy7nliSbBC7XIV+sdw6C
 t/gdLSAww0d9nln2QY1pcSWEqQp9
X-Google-Smtp-Source: APXvYqwy/EGZLKr40gHmq1qzPTjQ7teFpi/ORUStLd3tWMuggbzyL4ei+JAMP79uCcyvcEkTXTFgdQ==
X-Received: by 2002:a17:90a:a40e:: with SMTP id
 y14mr3343108pjp.83.1566540366905; 
 Thu, 22 Aug 2019 23:06:06 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:7c34:e13b:6185:5c2a?
 ([2601:647:4800:973f:7c34:e13b:6185:5c2a])
 by smtp.gmail.com with ESMTPSA id a18sm941303pgl.44.2019.08.22.23.06.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 23:06:06 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
 <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
 <904604ca-261c-fc0c-b73d-e67902e8d845@grimberg.me>
Message-ID: <bf587646-05e4-4b60-d81e-1daca2146e8f@grimberg.me>
Date: Thu, 22 Aug 2019 23:06:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <904604ca-261c-fc0c-b73d-e67902e8d845@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_230610_156945_06D7CCE4 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
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
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Mikhail/Hannes, care to send one patch to replace both?
>>
>> Yes, I'll be sending a replacement.
> 
> Thanks Hannes

I already took the patch from Mikhail. Thanks anyways.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
