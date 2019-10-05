Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1F5CC6BF
	for <lists+linux-nvme@lfdr.de>; Sat,  5 Oct 2019 01:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SzyWkNusWuqrDGtvdrZh/FkRU7jTg4FSm6LlWQL9u/w=; b=gyhZ0K5CnHjfaW2O6gfOzxABQ
	WS220hV6A43mbFFm4r4Rut7wyQ6UlSw+2YUtJs/0qiddlWd/MdDNW1r190LY8Z9wzlC8IJOoQZbcH
	N9tJQIfWI3E5NJibkAzhJ6rzQt9jxXmSh990ql85bTO+JbCjNGx4KwIDGARKJn3qeb5vNoN/4PYei
	1lj8BwCrLpNMzIxeeHs1Us2BNgVrH4Tgi2DRG/Yry6Z0a6zp5Zn+DPmJSS0g19xgvzL2OqJwDt0KW
	kepnO9jMFbKk5ZG+gjnRS4qQCnP6JTnwJ3tt57pB7DCwXSgVS7evNAnv6DeUZDlqsI6Io30Jwtthe
	tUKnEb4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGXRA-0001vo-8G; Fri, 04 Oct 2019 23:56:40 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGXR3-0001vO-T6
 for linux-nvme@lists.infradead.org; Fri, 04 Oct 2019 23:56:35 +0000
Received: by mail-wr1-f68.google.com with SMTP id n14so8978309wrw.9
 for <linux-nvme@lists.infradead.org>; Fri, 04 Oct 2019 16:56:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9jE6nmtSL5D4sF2R0+gsLmhaayKxmXAcaA8l72G4TXM=;
 b=lXaPaEbQ2FCOmPZ3kIXrK45G+g7vT+Z+m2dvHHC2UFwF2cAJLGJLCrq0HJnnXnHpVH
 CJCgWN9Zz40MUiZwOl3Tg5nQMutJpZCbSLuBnj90iPaMzExR4LOgS6OoX/IAffpCRLTM
 IQsJK/Mb8Jgm4/NXGvgdOsL2Z8Mbr/1we221S1COb+jZSDwUz8pS1t26OU3IawrFtyN0
 4pBGM4j9iG5mb6/eMsDfLO7DSUyukh8kfTdTCe4vTJF0j3s3siJTEnHZqqUwxbxmMCUW
 yrzaEyt2LSBwgK5LbN4FklGdPxcsB9idYI1hmQkh3AinQFtiyq7Z2WOBzV5v+rpdWEod
 h9Gg==
X-Gm-Message-State: APjAAAXHMKHWliNqkhYyH5OI3x2aOvRe6JX+w45EipuQ35iaoKVj/fcb
 xwPyeIC9mmMC5Cgk1durHw0xoulk
X-Google-Smtp-Source: APXvYqx4Hi4NF+TlwcVyETjf8l2Ta9UxENth/M+AHcg0ouqZPjTP+jpfWhz8LsVFSwaeKWY6IB6YFw==
X-Received: by 2002:adf:fe86:: with SMTP id l6mr10843878wrr.278.1570233391319; 
 Fri, 04 Oct 2019 16:56:31 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g3sm14712107wro.14.2019.10.04.16.56.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 16:56:30 -0700 (PDT)
Subject: Re: [PATCH 0/3] nvme-fc: sync with FC-NVME-2 standard
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190927215136.3096-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9a0beacb-72b3-0e3c-fa98-0d1dcc85fe80@grimberg.me>
Date: Fri, 4 Oct 2019 16:56:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927215136.3096-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_165633_939435_A1FDEE59 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good James, I'll queue these up to nvme-4.5

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
