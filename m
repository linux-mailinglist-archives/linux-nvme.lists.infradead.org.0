Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779E11C1C5
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 02:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BVpWrZguDLfXKhk2p27oQ1ni/HDsJdxo/x2zkTTJF1c=; b=OOVtY6Fq0ZY8ryW325g+/uahc
	qP3j1WSbVt0EUdo+igFLM2036hKKtCB8CDsrn3fhVVygP77nlCMP0XrpqqR18UCGfaEW/FA0Uu4ru
	yfoXtGoEmdpaBXEe1DOPAojqShO8TH6qjtqt/zkuB4eKQYQsW3cj4FligxCinIAFL6NKBiBh15gEL
	D7aL4LFk3uPxEjcogSKnw8sooLXfiFk7McoCIPsoOvVGodLM6zPkfVZiWcDOV/YUv3Gb4GjSyIzd6
	0RHdJpufRE/AUPIIRWQec7m3N2gYW8xAGI0o57wDRPZOoonkzP0Am4tSkn5TAWhxeN9o8Xbdx5GPV
	cgZje+g+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCrc-0002SS-0t; Thu, 12 Dec 2019 01:01:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCrX-0002S3-GG
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 01:01:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so648582otd.9
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 17:01:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/FIaez+siHXxwj2Md812DdR1lJ7W4I4ImYQYdRXkLyw=;
 b=fnxafrdhTTV4fVZzI9/ZaFBOWs+WYPVhp683n/9Kq55P1Wuaun2jwvi2RZCqucMw3T
 8vEOUCbxlwH4IiXljbX33WvTroGJ9X1gj6lcBaX6aRkBsY/fYEXEh99mSgw6rrKrCoHk
 Dw5KlOL5b4L9HBrnjUIAVrEAq4LnHP5EOKaLTgycCSnr95X0Szl9PVIu7Qg9aGnpuD27
 E/BHQ9hvuk9AJunoJv/gjoRTAFmAp+w1jLYdFZymgNZAD2DkIUQO03TSBD/B0rXLejvB
 VYYQugk1WOKaKxG1IM+1PG2yGJn5gPyE76hJ93T+OrRO7qSTFoIME8Saho6CRlDnl25G
 NTWQ==
X-Gm-Message-State: APjAAAWDpaF5xfqnidGT2yCIAgCFErXLXsX8s7/YgYbwJ7AI0/yTe8Xc
 fT3aLkzgLAVlSN+w1ZmLAPB/8Si9
X-Google-Smtp-Source: APXvYqw0mBjDgZ03/aHbTyB+q6PNiGvCtbwLoO+Cg3aatxiqppWTxq1Jlo3Hs3sAXYV2pivBWb6jPg==
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr4940100otr.82.1576112509910; 
 Wed, 11 Dec 2019 17:01:49 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a65sm1537682otb.68.2019.12.11.17.01.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 17:01:49 -0800 (PST)
Subject: Re: [RFC PATCH 0/2] nvmet: add polling support
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
References: <20191210062557.5171-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fe370161-13d7-a005-2666-968107be13bd@grimberg.me>
Date: Wed, 11 Dec 2019 17:01:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210062557.5171-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_170151_540074_973B7146 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

percpu threads per namespace? Sounds like the wrong approach. These
threads will compete for cpu time with the main nvmet contexts.

Have you considered having the main nvmet contexts incorporate polling
activity between I/Os? Don't have a great dea on how to do it from first
thought...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
