Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7277966319
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=ktgMS/+pQ7dmw2urdzOJoADqM
	/mW6H4EhMf1lMshpvN2x6f/Y58AGc3Jk7e4Y9cXHG6bNFCrNX6aaBT3C+3920DxqT/aScy8ukTD+A
	VE86JF2tUowNqrO4euqUHr1No4opRTB3xRB+bjVhjvnURx4VTizRKgchwMkqApNrnESBFa/7C8Rip
	8sFA3muKtG4t0a114Uv9WLUkF9jKjR1rZH2oIs8pSq70kbp+Yt2s4i1nkHCw1E3HONTFjpgWe8Bd3
	LUlLpCZWhPIW42cg4dsQ/i0oR8GzVN5Ts12ZfGlNwS3G/qPIDqDTHoqJbywfd6L0nZPWpq3n6Ac3I
	EkXEplZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljmw-0004Ah-6a; Fri, 12 Jul 2019 00:51:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljmi-0004A6-Ll
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:51:37 +0000
Received: by mail-ot1-f65.google.com with SMTP id x21so7761592otq.12
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:51:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=ExzCDmVlqymwUJNAwWQfF6dyrhmT7s9BYEjUvVG2gkpTMKOZNqJG27QucAGxaDYpEf
 vowR7iya5DXyqALA8cjhBq8F/zF1V6jEOT2MG11Aih92u2lHDxzvF32R8NeZfICWFzSl
 /78u3EFX5i7lmtpkIZO+ffUNIl1TdbMODbU7GgpjVbWGi6pS/qTg6R696UEOrD8xTbzh
 XsU02iVyKJdQsIxutmUGZLROV1T8cOSculvbYxrgdm2uXnyoMwngdb3A8iIULBULaPNS
 LcEmxs6te9pzt/lXOQnuoGmmvJfN6wG40OFYjRus9YjPegdp6/DbHEwpd/1ytCEdTA0i
 BNiA==
X-Gm-Message-State: APjAAAUcm6dHBV++4BVRS3luxdIbfiA3map74yjyLkVEAQBm5tColIAp
 OnKvvr2nqBKBk/YeEB3xiQ6G6+QN
X-Google-Smtp-Source: APXvYqxfnmrOo7tijBXh/ewyDrkBw73psdlKzMPeMGZAFCk2csn5iCCQEYr+hh5UI/8MxErPb0fj8g==
X-Received: by 2002:a9d:6959:: with SMTP id p25mr5730787oto.118.1562892695802; 
 Thu, 11 Jul 2019 17:51:35 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n26sm2488847otq.10.2019.07.11.17.51.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:51:35 -0700 (PDT)
Subject: Re: [PATCH rfc v2 08/10] nvme-cli: Expand --device argument processing
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-9-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <208a0afb-572e-39ee-a97f-6ea7de6fe56b@grimberg.me>
Date: Thu, 11 Jul 2019 17:51:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-9-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_175136_708656_1040AA6F 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
