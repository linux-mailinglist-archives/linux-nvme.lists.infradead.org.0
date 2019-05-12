Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75A1ACAB
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 16:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=bV/0rpj9KEuE0Nc3k4jKDGbe6
	TQuru/CDd2eviK1aDNDRZt4BZiusYLA9mHyJ3P9naT01ObOmaeIvZroTViD0eFUOEpk9NaDCuIyK/
	sIQ1UV2gS5PpVpxmSCRdR2Tm+suRi4kDVPV9Y9C3iTZBFOrdppc9wAe2CBZlaq0GwxNQAmthvZhOz
	GGp8QbRdrmYifPjlMWO3HqAtKwWth/knszgX1CyuqHiEMp10NhrqIiDttlnybMOU6KLFpKkdkdzQE
	n/a8dq2zHGFuAZ92czdXSsKXJD9lbXZHB6w3RLzA65ghbCDx8/fNgYa6DXAvJygITH1pNn4yu+jBf
	LsncaEK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpZV-0006JL-HM; Sun, 12 May 2019 14:35:25 +0000
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpZQ-0006J2-Nh
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 14:35:21 +0000
Received: by mail-wr1-f54.google.com with SMTP id d9so4055219wrx.0
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 07:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=V4kE9n3oCWtowoNt5iiVekTnrnhFwn9vnFzSIuJGlIFFQhrn+c0GOGnotxFShM6+Ag
 p+eBgjcLNQg5AcPPBQ3Q/TXPEavvF9AE/2WVZNBZvyzVRjTSWBeKPua5/TUdzPMz3ftj
 g9fPQJIRKQvGDTGyr80nuUbQLSF6fEt3LNCvgtgGcyQ1RAr5lPDTztP52Ulrq6SJrjkl
 NIvUQllZ+snUHtPdcOlO/6V5hGy4i5oc3ilnOxhjeyoJUaz+hXcSSS19lQZ8hRvNQL4d
 XI4qIs3jGjkoa6yS/2dD4BnjOAtGMH/Q/lk5N4khGaAQvOD+WXaDzzckjTGV63h3F7kt
 pWsA==
X-Gm-Message-State: APjAAAWoq+5BCi7IIYv7xr8pmsZ8mKpOcOLEUkW21OLSJmaJQf8w2OlA
 uSuMNfmkRfLrQnlfuk+ESyc=
X-Google-Smtp-Source: APXvYqzukYw6OtFjanoa4y+24ZkzTfst8C/dT7osChW1hjrYorqYjkw+ZPqx3/fczRhhUYJXL3maIQ==
X-Received: by 2002:a5d:4d46:: with SMTP id a6mr15216156wru.142.1557671719134; 
 Sun, 12 May 2019 07:35:19 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id l16sm16047309wrb.40.2019.05.12.07.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 07:35:18 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-fabrics: Remove unused argument
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-3-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <73e28edd-6c9b-1749-7015-6ffd7391b351@grimberg.me>
Date: Sun, 12 May 2019 07:35:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511134255.6790-3-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_073520_773015_C60F5FCB 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
