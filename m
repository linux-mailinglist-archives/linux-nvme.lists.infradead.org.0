Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42EF1A42D2
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YarA4UvS1+JfNUjmf8qA9GsEo8tZ7p+glA5tpCV04yI=; b=uxRH5pI/jdcvhIjlmdvYFqVfN
	TZMwFqSMX85Z6q1dat9Zuu3lyxb85lMsm4nFvkaASNWr+QnNIkQgntqevdPvkEEDjlDyz3fKLNXGT
	++acX96WNtAe0/WoJqVQgaKWcRwaPxVPxJow4l2gUze0zM0TRL1338l7IMYto/ALi8CIoEzsFeQuz
	VSLAS6N/vwOnzw4Kl2stVDVr90SNsRVumU5SnWnwiUQH8BRIVE1OjuZG8wNjjp6U7ugNafZUmdsEM
	fOKyL6sBoXlX/woBQAa8FA4MEMQ71Zu4YT7h9/oGwZ4YcwdPlMrXVyYBosnC8av0BD5+fIPR5d/Oa
	hvPD6Ht2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnqX-0000Z5-U7; Fri, 10 Apr 2020 07:13:01 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnqT-0000YH-Kf
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:12:59 +0000
Received: by mail-wm1-f68.google.com with SMTP id a201so1395725wme.1
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sflPGYi5nJ1pXucI7/eD/lEam/gO0Dj2i6QrUadBT88=;
 b=HSXirpKs5+F3s4X/NBq7qAa3VT7O6aoO2rvMBl9cYtQ06k3megV7U4bxJohQWe8y4V
 +rrtj6PDACWfxoPZ0cSQmmKJEaHua034pSHZksGAfZQCfnwdz03Parm2yj0/TzQohsdO
 HD2XayUCyHItma5CPCgszZ6clcPQUVJ6sVRFwNgLyoU9CAiOSnhfWHXb7MwHo5WrV7hT
 OBGDOYdwFre0Dxl4UhX95O6mSXl+OxOiyWNU7g+cjP2iJa5JqEEhXZkhksziqeHIH67V
 B8c+zhniH43NWjN7dfciq7j5C33pCMEvD/gMTxuRbeJS/sO+RICkqnU/1nZDwOA5ijHv
 P9EQ==
X-Gm-Message-State: AGi0PuZMTTc8uoqMtwDV3mFhp9y9yEcWr40qk62qwQMlU0r3BqJNTjPS
 pSRzFM8zfVBi3Oe4XX2VpwQ=
X-Google-Smtp-Source: APiQypKBbsQdmRArce6d9hznVrVvrK8GmINbbbeBy0k4hn3fYIodYILJKMuziiGQtlcpbg8aCqgjJg==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr3718169wmy.30.1586502773939; 
 Fri, 10 Apr 2020 00:12:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id r3sm1732796wrm.35.2020.04.10.00.12.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:12:52 -0700 (PDT)
Subject: Re: [PATCH 01/10] nvme: unlink head after removing last namespace
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-2-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f9fee18b-0e5e-e84b-7dfa-9cf22b56147a@grimberg.me>
Date: Fri, 10 Apr 2020 00:12:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-2-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_001257_674749_5DD8C9BD 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Should this have a fixes tag?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
