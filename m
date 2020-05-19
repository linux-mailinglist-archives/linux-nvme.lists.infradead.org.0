Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9769A1D92BC
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 10:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sIyzWwuwEaIa+aEOx6a7MJmSFj4L1pfaT/mDjFX+1nw=; b=ZwPZ89Ct+4RmL/kqeAOTzhFVf
	MD3UVgf7vh+mbSh/q/y2AX/l17wsAMZ+EwQkoxVrFfaFj1ocb0nBStznrpTv/uNJFLQJFX+cjoABc
	Cr/oFz4lKqtkr9DneEnbomzw8wVHNjH0VZ6qhNvmktjUty5gMq1bFU8nHP1aAAshKsJVEsrlA2TmJ
	QLH76U8aUdcT3L0SAqUm+L1X0gXOhda3rbFnOTQcf1DvnM5huu8DcHQZ2TEQnzS2nUuAF430/BRFr
	SMTMiE8SbhjJB34TdFQ/S+zDAcLKMl6LfzJjEa2sQJ91/GMzDZKAqiIC0GA6iib/P/1gOmsRM/A1l
	l7c3wh78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jay4Y-0007pe-LK; Tue, 19 May 2020 08:58:02 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jay4T-0007ot-Ai
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 08:57:59 +0000
Received: by mail-pf1-f195.google.com with SMTP id y198so4637448pfb.4
 for <linux-nvme@lists.infradead.org>; Tue, 19 May 2020 01:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YRzAUgxPoMzRMQuicoYDmMIlW+uY37GrYpx5oVpIwcY=;
 b=BzcfA2FDDe8tPl/lO7UwHU2dvY47aU4nRZZWdo0pMUaxW7TkKKEk+CGy4zrKDcyYTR
 MzEPGN8FrZCFxQdWgzHAWXgeUY5f3lvjUnpLWsxbqxSVR5oXWid/XlkSTn28RVpKxA3B
 y3H1gPPQGcyk+1PWcUihB7k7MNKkArVS/Pt4KUH9XAtVnN9rhFNlnnX4jgfVTzJOOJsV
 d6Dm1BWTO40oc23lnVkPSxQHT0jyhknxRl/SqySwvc6HKk0/2IhE2jvMDwjY9fxEDuhT
 hHshBc76RKjdURbRf3z9lcIxmyMAwcLvAol9Cp3mSSpdCiArkV3q2dIgsl/j9EQVRk0A
 2/nQ==
X-Gm-Message-State: AOAM530kVt5qRW0b4Apj7ehd5tKWIDT8Sy40VPpKgRCv9DUO7Fm0eomn
 spI99DohKAo0EpB+UEiXaBYpZCQAwEA=
X-Google-Smtp-Source: ABdhPJwkzfv6AOsj5vdC9RuAC0ZWHwn9PnOZZ9Xlz4vuOJTidwKGCICM9z1No153rZ1xwvA0vMvGJw==
X-Received: by 2002:a63:7f48:: with SMTP id p8mr5375738pgn.440.1589878676218; 
 Tue, 19 May 2020 01:57:56 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:507e:6065:a37d:f691?
 ([2601:647:4802:9070:507e:6065:a37d:f691])
 by smtp.gmail.com with ESMTPSA id y14sm1663524pjr.31.2020.05.19.01.57.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 01:57:55 -0700 (PDT)
Subject: Re: [PATCH V4 4/4] nvmet: add async event tracing support
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
References: <20200519080630.3500-1-chaitanya.kulkarni@wdc.com>
 <20200519080630.3500-5-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d0ee797d-d64a-22c5-7b26-26d756d53e5b@grimberg.me>
Date: Tue, 19 May 2020 01:57:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519080630.3500-5-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_015757_360936_5585F151 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Reviwed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
