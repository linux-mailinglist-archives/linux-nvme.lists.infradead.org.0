Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0ABF1B8B
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 17:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wVDc3bALbHt3n4gYudLFBQpSqGqETZ0kiDQ3F5fXnmg=; b=m90hB6b0j6Ip8V6vFzbpZVou2
	NB8Pe4E6iD54mB8PBQUBPrlKO0IjL0p4O7QIo05+IzKIyBGO8UXmDtcrbr8ZZ/RdJCLLzI5CwVPhe
	czXKGK3/cAemeg+5POnxHnJL16P7lSkuUnG7JJuhWzJEqD6ziOIPg8acPYbpm1Ws3pnshySceatmk
	kb+uwnEa+1XrFDjPTwrs2iNwvzMZ4HXcqYqCKFpiLXjimxaeTUsDhHaVus+wwL9iHy/qpaLgxRyT/
	0fMNnu7tINe7FhBlrn4EyHTvI32nMJ3M4/Xu53U4E9UD8fr6uzBlGpvs/NZaVinn7wLQSnFfd3dDy
	wz0lxtsVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSORP-0005e4-Q2; Wed, 06 Nov 2019 16:45:55 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSORJ-0005dJ-7m
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 16:45:50 +0000
Received: by mail-wm1-f67.google.com with SMTP id z19so4191212wmk.3
 for <linux-nvme@lists.infradead.org>; Wed, 06 Nov 2019 08:45:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1HljV2Qn9DlNDZI2CRURsb3jR7isCsaPsq99YS3PwLY=;
 b=T+amaROS2Nb1TM9A2AQfF6UxB7K8YPaS/iaaCJkYTAAZ9IKs7GJW5iWMyNFO1wDs1H
 wwmpLoe+CEiLip3EHgaT8dmPdZk+vnYGKDYkRv3zb9Fz+GLV0uQ6W5vKBI4PaqhpCllV
 BFvAUtB1EshG4IHGXCKYHuooVJ1BuS0O2soCPrbe2ZYfq1Aq5jQdMPQwfgCNtF9H9GvR
 aE1k0keWUOefE6Vz+n05nGSwD35zuwmF1Em3IflH5lNOxtlxs2W9f8homWC3U4351OQJ
 1JePUiXNwNokLKGT0y3rrUdopJZN5PA969eQanHdLeFJtgsLvdjbmYWq4awB41dKv9BH
 uVbA==
X-Gm-Message-State: APjAAAXEP1yoid6CFoIa9Inp0U3xc4US7kgihK1RXV/AHtcjllfaQciv
 2Oh1HMo3UW11lYs8hpJLuX5qIhlzR54=
X-Google-Smtp-Source: APXvYqyY0kvlGFRULJ+lgAWUdCnF0O08mZI14RBtgqY+3LBr70/QjIWnhS5huP6dqJ5cON0kQD/lPQ==
X-Received: by 2002:a1c:2344:: with SMTP id j65mr3602601wmj.38.1573058746957; 
 Wed, 06 Nov 2019 08:45:46 -0800 (PST)
Received: from [10.30.10.132] (149.red-80-28-245.staticip.rima-tde.net.
 [80.28.245.149])
 by smtp.gmail.com with ESMTPSA id 5sm2735833wmk.48.2019.11.06.08.45.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:45:46 -0800 (PST)
Subject: Re: [PATCH] 2/2] nvmet-tcp: set SO_PRIORITY for accepted sockets
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D4AFCC@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7f963f1c-d15a-58cb-ca9e-4c3914038a82@grimberg.me>
Date: Wed, 6 Nov 2019 08:45:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D4AFCC@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_084549_286995_92FE586F 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

We could do this with configfs, but it given that this
is very much specific to tcp transport I find it hard to
justify.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
