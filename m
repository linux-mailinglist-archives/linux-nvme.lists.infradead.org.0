Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64DC6D7CE
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ivuB6M2vz3NWI2PdL1svxKwKYoEmcJdexsfgbxJC/4s=; b=bKXUfNvEmv5VhM9pAKtKn6fAa
	bXcVWscIkLslFQuJMv1h97QKruswnMv/ersW2ywtMqVZrAdOXpBhQHSZQikAPjat7XeT/gX9rb4Di
	RvrCE7HWhcS3SNInP8q+G7mnJI8fb7KUv73MLSSGJ2PTCfwnFa0GXP8GECOju5KFPKoexNt4FpTU4
	RxJNtGMpeVSMh/GWsG9rZuLk33ZiU8u0nMwLE8lK+y4dbmE4YMrYMINWmmHQGLgEHnOMWrPuk/ooy
	M4qyob0NlpwljqvCO9i+QZLcLPY9B8JFFY+PiHZik73lKxgdwGCzuSZmJzEoLrl2f3Lg/IAFQwvJG
	f7SVymL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGrw-0004K4-2M; Fri, 19 Jul 2019 00:35:28 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGrk-0004Jj-Pv
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:35:17 +0000
Received: by mail-oi1-f195.google.com with SMTP id w79so23008368oif.10
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/qQ720Q1kfsq+vfFSm0NCDXT1/aMuItampum5RZ6Jqo=;
 b=aBAkPlox11czTCtYMehosM0xwa2TQYouga2z/KvtoecTWLmMxK91FkVZ9qANW32lCG
 n0/2kCQHg2OL8pZ6ybTD8PQojxKrmXGflhlfkVuVYNOvM++wdO+HakcMLixfsaM6m+NW
 4HoyoM4A2PUaR1Yhlh0EAagH7GgpOin4/2dlqmZ5v8KmqPIrmjBSju4KFA3U0Oyy24yi
 ukM3uh7zr8zyT4j0IpVtR7FHd1TiEhVPaGNZkOih6hfJad8rTZ6HESqOZ398ZqYXwZ7f
 aJf+ZB3vYDPG8Gvsq2se7Fa5yFghE2Yi6LxYcutMgcgK7kW/Ovwpo9jZR6kU5GkfYU0U
 tTUw==
X-Gm-Message-State: APjAAAXRY+DRiuRZD/cFla+nRKM5YhSnHNqEOhbcJoUpRSXhFUK8zIU+
 KZ+erOfL8gjP539+GDULHxPsnxan
X-Google-Smtp-Source: APXvYqxqkAy81gic82jgzchjb8A3FE4dFXccQg9lOGMt7F+695/tL7m4pCh+QHnGPppNSE9luUyWyw==
X-Received: by 2002:aca:4f55:: with SMTP id d82mr22542501oib.29.1563496515922; 
 Thu, 18 Jul 2019 17:35:15 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e78sm10494618oib.50.2019.07.18.17.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:35:15 -0700 (PDT)
Subject: Re: [PATCH 07/10] nvme-cli: Add routine to search for controller with
 specific attributes
To: Minwoo Im <minwoo.im.dev@gmail.com>, James Smart <jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-8-jsmart2021@gmail.com>
 <20190717115711.GD10495@minwoo-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6b3ebb18-4b8c-c18e-501d-cd8f1f41c676@grimberg.me>
Date: Thu, 18 Jul 2019 17:35:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190717115711.GD10495@minwoo-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173516_843206_09D43577 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +	for (i = 0; i < n; i++) {
>> +		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
>> +			devname = strdup(devices[i]->d_name);
>> +			if (devname == NULL)
>> +				fprintf(stderr, "no memory for ctlr name %s\n",
> 
> nitpick: s/ctlr/ctrl
> 
> Maybe it can be updated when it gets merged.

Yea, lets change that (either james or keith)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
