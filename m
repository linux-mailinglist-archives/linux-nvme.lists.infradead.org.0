Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2760763978
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 18:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=AOikTF9kcXknpRdPsIo3dL9L1
	ou4A5ZGD5VjmmyRfDMDTqCfGpKi9eEvBLB+8cbwzPdupRPT6aCxVAycz9IX5pVm62232Ou3zSPBxB
	jtGQYjCv0AL/2QxdZDfpvRUEyZo9tk3Mh2/Ibr8XV3tjq15p8DYE20hllA5cXkICcEbKNLEV6q9UR
	QzYPMlD2OdYUb+6aDYIrDZ2o8/gZhB9BNF++MXkLaGLYszZOaliosAkRwtzZBfveJuj0yjQDpPVxf
	INvi28/ZEwwktlk0WD2ENwJHwmT95TiqV6+1BNiYfF/aX1/Z/VGKjvNfZNEO5UBY0aadS6CFFeKCv
	fAm/HnZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkt60-00022u-CG; Tue, 09 Jul 2019 16:36:00 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkt5u-00022S-E2
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 16:35:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id q10so20539004otk.10
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 09:35:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=e1HyyGjHIrt1NoxAocYPWYdIQTDyVFjpyVN7pZQEfXyIhVWM9JEAXz0H/TeReBdyWO
 stoA0YFmGm/j9ILdp7rM45lcKq4gx7LhlgNdkcau02hvTbA5hP2EhERg730fh6+Wn9VN
 Zd8wY9i+JbaPT/W1BONMZi4pR6trqMFzMyHpnvB9wXAlhofhojnZ5ax1qSEdSRO0hK69
 esuikKCihSJQNq8aRQgGYhpVyUXiX6hxaPxOMO4gW1smiA6SjRT6t9m+lEl5medQVv+p
 pYrWHq/Zexr/xq2YFACMaqhvG0Xq9LgGQ+FRooQ7jKSbxb1VshbocG97jplS+Cs9ARxW
 QqWQ==
X-Gm-Message-State: APjAAAVcNdx/lVJZRjD+BktYoK6RuWojznI1zlUfkRbLGzDCkL6pkRG4
 TOQqopNp/ZIEN8SbP0isjqM=
X-Google-Smtp-Source: APXvYqxlz2X5zvkROFTYLqedWbN/tMzJf4+rjgIRAEjvuhfBi6nUTdSlvgoCRmOv/66PJd2/2RSGtQ==
X-Received: by 2002:a9d:63c7:: with SMTP id e7mr20372131otl.165.1562690152354; 
 Tue, 09 Jul 2019 09:35:52 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v203sm8839080oie.5.2019.07.09.09.35.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 09:35:51 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme-tcp: set the STABLE_WRITES flag when data
 digests are enabled
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
 <c34300a7199db40be3cfe0ac729ffabe77fb8a1d.1562586804.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6184050b-6f8c-cfe3-d751-a59ae71cc172@grimberg.me>
Date: Tue, 9 Jul 2019 09:35:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c34300a7199db40be3cfe0ac729ffabe77fb8a1d.1562586804.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_093554_471820_6E97B780 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mike Playle <mplayle@solarflare.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
