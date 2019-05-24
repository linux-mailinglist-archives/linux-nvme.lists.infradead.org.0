Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351B4290E3
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 08:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+U1BJIQv9oP2cHqNwvsncPgN5scXYkuq73ol5BFwIxo=; b=efJGAeMjAknANzYS9iWtDlDBv
	u0L6/jzt0JtiBBUu5IIXdEvytQUSfsGVb9+DCyr8KYVC/DhsHhjmHRBuJFwpsW3smR1KNtjHAKwXH
	tzDelWcN6ZfOiZnu9AS2EoOQEKYuIuMq9Cbv3svJnQEC3D7ZvjBHc3/Ja4/Oo3wNWiNop9w5PXu7I
	GomUIc1v9NMlRIM51kAiY6cj+SlBZmbMbtoGKd7D/uCP0s/uiAatmfWrAa012FaueUbR9LHqAuMGR
	afl6YgbmeOuVeYQvtc9luU+M0td770wTsqJyef/GxsJle2GIGxxZHsu46N4KhkS3+3jLDGt7su6Pq
	QejEEVHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3dJ-00008q-J6; Fri, 24 May 2019 06:24:49 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3d7-0008R4-40
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 06:24:38 +0000
Received: by mail-pl1-f194.google.com with SMTP id go2so3729208plb.9
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 23:24:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j1ByN8SdP3WEFXHyhqkM82U6cS+17ybnPRO9cdoKZqw=;
 b=mlhBb8jcumXZcm+bTOIUSJ6btuY8XXzv/UAhSC0KYxJcAWdwIj4EuWp2VtW2vAFhwX
 nGQb5amfBHtO3U1I5sQ98Wufcidtc9I5ZdosrNQGBpXYEXmGJoAq8eqVCg2a8Ll2Lllp
 5eylDqQ9SiIkwqh13JXrxAFq4DR2YCV9ut5xnGEtFURLdGoScsIcLJXxJPb07B6LPMjE
 FDbcetIbQs5TBG07EKf4WcHI5LD5hbdwU/E9Y/FeI9AxFjwHD/lZjU9MpNSptIG8dAUP
 sf2kLyA4hBE5MnVZgm4/C5ONuavjPib0ACN7pyBYN1CWtuAH7TlgQz/RapbNUTMSAiXw
 Lx2A==
X-Gm-Message-State: APjAAAVwDjExkGOziiyyBozgU5y219HsmYOUVFCKw0V1IIxSXWogWY5b
 6+Wc5sD9JfNppvDII9SA9FiVzy4Q
X-Google-Smtp-Source: APXvYqyw4Xv8mV19szchBPcI9v90iPPWdw1p3kfXaAJ0//vbyvCT4jWB1e7KCE6b1ACwbrRwJ5AgDQ==
X-Received: by 2002:a17:902:1102:: with SMTP id
 d2mr16150709pla.84.1558679071839; 
 Thu, 23 May 2019 23:24:31 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id l3sm1213660pgl.3.2019.05.23.23.24.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:24:31 -0700 (PDT)
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Nirranjan Kirubaharan <nirranjan@chelsio.com>,
 Max Gurtovoy <maxg@mellanox.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
 <20190523075524.GA15479@chelsio.com>
 <06d347cc-7df6-c2b3-2edf-88a53db3c12d@mellanox.com>
 <20190523114157.GA9479@chelsio.com>
 <033ac067-29b1-30ff-6ad0-5e13510649bd@mellanox.com>
 <20190524044341.GA5129@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <955d9336-50d7-248c-eed8-3b038f6a5a11@grimberg.me>
Date: Thu, 23 May 2019 23:24:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524044341.GA5129@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232437_259994_7F19F5BF 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bharat@chelsio.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I'll take deeper look on it next week but please try the new attached patch
> This new patch holds good for the minimal testing I did, with target allocating
> lesser queues.

Hi,

Just got to this one (after ramping up on activity post vacation..)

Max, I think that your patch is missing the case where default+read+poll
queues are higher than controller queue limit but we can still fit
a queue separation.

For example:
- requested 10/10/10 (default/read/poll)
- supported 28

If I read your patch correctly, this will fall-back to shared read/write
queue maps with no poll queues (10/0/0), while we'd want in this case
to still have the separation but simply have less poll queues (10/10/8).

I posted an alternative patch for review.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
