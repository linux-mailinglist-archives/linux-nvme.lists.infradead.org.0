Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196E5198C7D
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 08:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ODBHR0LaSaDPQ6o+mNLbwwjI711XwXKN/t0jRoi/UtM=; b=YtC2HWgIavcvA7FLpvFiivQT1
	YFpk1vQ0RoPQL/AY9zlsz47ZRlkoMZZ6HnxMaf7AjBV4aI1gLApT8YgW8679GaXPgC7glr6lnFLAP
	alf+eo69cBCHxh1RxxMboNqz1IKb2Fa1qUUv3LIql34jkNINqXGG5TDmZ6RXHoGW6eDT+uR0bygrg
	lVM3Bt+llPzJXYOCDyo09/C0fasJE9g/pLXRiKssZ2YGwaF/s/gxTN3Qj9bOFX7KaZ+sLJR4i5SE4
	l5zwbzyLGl9I81jFKd/TYtTYqqbp39jcz9Euf42YqpkE8OfEtSTEWV/ry5Y1PZCHHc/ae0QuuyEQY
	epBFxKz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAf0-0006RJ-3g; Tue, 31 Mar 2020 06:46:06 +0000
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAeu-0006Qr-Ud
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 06:46:02 +0000
Received: by mail-pg1-f182.google.com with SMTP id 142so9903517pgf.11
 for <linux-nvme@lists.infradead.org>; Mon, 30 Mar 2020 23:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YSGQ8rMObCV+VBz/QXe9Bcig4i9tqGIr/8DvygOE9uE=;
 b=tjaTD/SsCDvd+ZvxiMV8+3P9aBGolNimOjO0KZH+e5Pa/7Dp3fGMl+uBKeG+b1GQND
 n7c3aud6snOckuubVP6K35IYXGntmj0KtQjRTBq1yeSzTLI0/DFeE5Hl4y6UQEEJMn0b
 KE2ZJw9sF5LeCa2gAVSjjyoP0p2XKhM/0gjg2ZawH20YXTHEhgQJyqjErK3M5qZ5Wabc
 KhL49o89iHiNyAOTZ4jjCBet1Yd/1WvFH4nba3htFHr1LD9uHjzHhBBu2ErHqkZ2WWB2
 yp4Fd+HuOBnUpv0oJnvyuGwF65CwBqBj8b0zG/W8bCucYtTOl4bSu7a0AoCyAXPSwb3o
 NjGA==
X-Gm-Message-State: ANhLgQ01libBZ/Zv2xopuOMzWZYgLFW4ehlHMuo8abr90CAYyaqkLm7k
 7pBi8YkynLox07WY8kHE8yxGicug
X-Google-Smtp-Source: ADFU+vuARYLMngiyLwsqzVxC1J5ajvd5Ii3GQtyIUM+TQ7BKbUGgT2dPt6vqPl190BkBCemEE6puDw==
X-Received: by 2002:aa7:988f:: with SMTP id r15mr17086059pfl.252.1585637159556; 
 Mon, 30 Mar 2020 23:45:59 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:b015:431e:549a:54d?
 ([2601:647:4802:9070:b015:431e:549a:54d])
 by smtp.gmail.com with ESMTPSA id a13sm10962241pgi.77.2020.03.30.23.45.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Mar 2020 23:45:58 -0700 (PDT)
Subject: Re: nvme: Duplicate cntlid error
To: Alex Talker <alextalker@yandex.ru>,
 linux-nvme <linux-nvme@lists.infradead.org>
References: <3cfc539a-07ba-3757-073e-dc81f9c0c824@yandex.ru>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2d02e844-5700-64e9-26dc-50b3958d2ab5@grimberg.me>
Date: Mon, 30 Mar 2020 23:45:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3cfc539a-07ba-3757-073e-dc81f9c0c824@yandex.ru>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_234600_989119_FAC3F19A 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.182 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Using Fedora 31 as a host I'm trying to connect to 2 nodes that host
> subsystem with one and the same NQN.
> So when I call:
>   
> nvme connect -t rdma -a 10.21.0.1 -n nqn.2020-03.com.example:subsystem0
>   
> device nvme0 successfully allocated but when then I call:
>   
> nvme connect -t rdma -a 10.20.0.1 -n nqn.2020-03.com.example:subsystem0
>   
> I get an error:
>   
> [239355.661527] nvme nvme1: Duplicate cntlid 1 with nvme0, rejecting
>   
> what could be the problem?
> Few months before I checked connection to a single node via few ports
> and it worked out just fine
> but attempt of H.A. setup fails here.

Your subsystem present two controllers with the same controller id, that
is a violation of the spec, and we properly reject such controllers.

In upstream code, you can specify a cntlid min/max range such that if
you are trying to play games with different linux targets as a single
subsystem you won't violate the spec.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
