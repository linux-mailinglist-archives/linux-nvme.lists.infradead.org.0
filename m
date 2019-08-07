Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72B2854CB
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 22:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YhvuNbhEobtHxKKyVE4zxhZq1vSQ7IS9R4uNPBnjENo=; b=VorgouDKIhYcgUk/h2rQE/pwF
	aOe7PudS2kvdzWQoO2CPuuJDVsMye7CmrHvjFEppeLDK+Io4uwV1EkidZIl1xaZG/4QA25YHNa3Ke
	GnieDlDlm6vElCa5IiG+vtI/UjxKys73CozFJpkKmQFysuJZXY0mBrmETCRqXMqTru+tpcm1JOmZv
	AAVdW37wUaLV+nvEnlWQcbj7Q/BfIdXpMXh7woyZbJgVdelW1Mvod4xRPlXa6fpoembBAMyOk1FaP
	ZIxHiwYqQJeeYVkEgnXktlbprgUjclqH/BEr/4DXMf264EHMJ+asQCw/UM//t0qlFXEUL/9C/8eU/
	WQTZgZYBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSxW-0008Gf-UM; Wed, 07 Aug 2019 20:54:59 +0000
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSxO-0008GG-QJ
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 20:54:51 +0000
Received: by mail-pl1-f180.google.com with SMTP id w24so42546574plp.2
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 13:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F11rqtOLV7PBOZNYBDsAenwGbfB6/S/BPuL0If47v+Y=;
 b=Fw/vsJobxc2Fom3iZfSz0mE6rQJvUc3BT1m4m9+oLDEhbbW1Iw4o05z9AHK24jF6GN
 /qd+/lQYKV1FofHj1B2e6hb05MeRBLVvkAtPUcxJluI4PIDTjikwKyPevTy+TVtoFj8K
 oY+DSc153s6mebXbKgUjNzFF0JUxChTSTUoQRXcgBGgTB5YsTZXpXlW3UNdFjaM10BvE
 /DwMPvbBR996nEaZ1fIaI/blGFRa9xB1L5sFdRLL7s7vEEvhn+ZEf1Dyy7SpFv0jVgcQ
 AME59sv0E6IlHyHOLGkUpU736G9qtm/6pv912nHns9Sw6YM87XnEOigYpB5jLn/d5f3Q
 YIfQ==
X-Gm-Message-State: APjAAAXl0dE6uOwLzcnEcje7nZP8sATEnQBJa5wAYcuZ+eI00Ny0DEEM
 Ipyuer2yfgGZAma25UnVhE2TKkN0
X-Google-Smtp-Source: APXvYqwEuyc7Ow/Z5wmiGysVO664EbuZCNaBg9+qutGw+FieL4KUYUtpa6t4B+oYhMweWHYEbs+4JA==
X-Received: by 2002:a62:2582:: with SMTP id l124mr11294169pfl.43.1565211289437; 
 Wed, 07 Aug 2019 13:54:49 -0700 (PDT)
Received: from [172.16.27.234] ([4.28.11.153])
 by smtp.gmail.com with ESMTPSA id g4sm107465288pfo.93.2019.08.07.13.54.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 13:54:48 -0700 (PDT)
Subject: Re: nvme target fused command support
To: kk rao <karuna.linux@gmail.com>, linux-nvme@lists.infradead.org
References: <CABECqUF5=Zd9Uu+9th4z1NNR8zvaW0T5nLM1k0JwTKU-9Dx5-w@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5dcafde6-fbf4-f8eb-3de9-555e80c934d9@grimberg.me>
Date: Wed, 7 Aug 2019 13:54:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CABECqUF5=Zd9Uu+9th4z1NNR8zvaW0T5nLM1k0JwTKU-9Dx5-w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_135450_848168_C413A027 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.180 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> hi
> is present  Linux NVMe target has fused command support?

No

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
